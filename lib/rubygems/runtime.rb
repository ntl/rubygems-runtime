if defined?(Gem)
  message = String.new

  if STDERR.tty?
    message << "\e[31m"
  else
    message << "ERROR: "
  end

  message << "Rubygems has already been required; ‘"

  if STDERR.tty?
    message << "\e[1m"
  end

  message << "rubygems/runtime"

  if STDERR.tty?
    message << "\e[22m"
  end

  message << "’ won't proceed"

  if STDERR.tty?
    message << "\e[m"
  end

  abort message
end

require 'rubygems/platform'
require 'rubygems/version'

require 'rubygems/runtime/gem_extensions'
require 'rubygems/runtime/gem_extensions/generated'
require 'rubygems/runtime/runtime'
