module Rubygems
  module Runtime
    def self.activate
      Gem.module_exec do
        extend GemExtensions
      end

      Kernel.module_exec do
        def gem(...)
        end
      end
    end
  end
end
