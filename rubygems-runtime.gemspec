# -*- encoding: utf-8 -*-
Gem::Specification.new do |spec|
  spec.name = 'rubygems-runtime'
  spec.version = '0.0.0.2'

  spec.summary = "Minimal RubyGems loader for runtime use, compatible with --disable-gems"
  spec.description = <<~TEXT.each_line(chomp: true).map(&:strip).join(' ')
  An alternative RubyGems loader that pulls in only the minimal components required at runtime, instead of the full RubyGems stack used during gem installation. Ideal for use with standalone bundles, allowing RubyGems to be disabled via --disable-gems while still providing essential runtime functionality.
  TEXT

  spec.homepage = 'http://github.com/ntl/rubygems-runtime'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/ntl/rubygems-runtime'

  allowed_push_host = ENV.fetch('RUBYGEMS_PUBLIC_AUTHORITY') { 'https://rubygems.org' }
  spec.metadata['allowed_push_host'] = allowed_push_host

  spec.metadata['namespace'] = 'Rubygems::Runtime'

  spec.license = 'MIT'

  spec.authors = ['Brightworks Digital']
  spec.email = 'development@bright.works'

  spec.require_paths = ['lib', 'lib-rubygems-trap']

  spec.files = Dir.glob('{lib,lib-rubygems-trap}/**/*')

  spec.platform = Gem::Platform::RUBY

  spec.add_development_dependency 'test_bench'
  spec.add_development_dependency 'pry'
end
