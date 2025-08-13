# -*- encoding: utf-8 -*-
Gem::Specification.new do |spec|
  spec.name = 'rubygems-runtime'
  spec.version = '0.0.0.0'

  spec.summary = "## Summary goes here"
  spec.description = <<~TEXT.each_line(chomp: true).map(&:strip).join(' ')
  ## Description goes here
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

  spec.require_paths = ['lib']

  spec.files = Dir.glob('lib/**/*')

  spec.platform = Gem::Platform::RUBY

  spec.add_development_dependency 'test_bench'
end
