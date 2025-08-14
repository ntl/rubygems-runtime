require 'rubygems/runtime/assure_rubygems_not_loaded'
if defined?(Gem)
  return
end

require 'rubygems/platform'
require 'rubygems/version'

require 'rubygems/runtime/gem_extensions'
require 'rubygems/runtime/kernel_extensions'

Gem.module_exec do
  extend Rubygems::Runtime::GemExtensions
end

Kernel.include Rubygems::Runtime::KernelExtensions
