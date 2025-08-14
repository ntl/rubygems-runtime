#!/usr/bin/env bash

set -eEuo pipefail

trap 'printf "\n\e[31mError: Exit Status %s (%s)\e[m\n" $? "$(basename "$0")"' ERR

cd "$(dirname "$0")"

echo
echo "Start ($(basename "$0"))"

rm -f {.,*}/*.gem

./package.sh

echo
echo "Publishing"
echo "= = ="

function get_gemspec_attr() {
  gem_file=$1
  attr=$2
  metadata_attr=${3:-}

  ruby_cmd="puts YAML.parse(STDIN.read).to_ruby"

  if [ -n "$metadata_attr" ]; then
    ruby_cmd="$ruby_cmd['$metadata_attr']"
  fi

  gem spec $gem_file $attr | ruby -ryaml -rrubygems -e "$ruby_cmd"
}

for gem in $(find . -maxdepth 2 -name '*.gem'); do
  echo
  echo "Gem: $(basename "$gem")"
  echo "- - -"

  cmd="gem push \"$gem\""
  echo "$cmd"
  eval "$cmd || true"
done

echo
echo "Done ($(basename "$0"))"
