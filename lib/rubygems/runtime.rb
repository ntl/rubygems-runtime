require 'rbconfig'

require 'rubygems/runtime/detect_rubygems_loaded'

# If RubyGems has been loaded, requiring this library must not modify RubyGems
if defined?(Gem)
  return
end

require 'rubygems/platform'
require 'rubygems/version'

require 'rubygems/runtime/gem_extensions'
require 'rubygems/runtime/kernel_extensions'

module Gem
  extend RubyGems::Runtime::GemExtensions
end

module Kernel
  include RubyGems::Runtime::KernelExtensions
end
