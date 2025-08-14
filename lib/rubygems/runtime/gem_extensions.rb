module Rubygems
  module Runtime
    module GemExtensions
      def self.extended(gem_module)
        gem_module.class_variable_set(:@@win_platform, nil)
      end

      def ruby
        ::RbConfig.ruby
      end

      def target_rbconfig
        ::RbConfig::CONFIG
      end

      def paths
        [default_dir]
      end
    end
  end
end
