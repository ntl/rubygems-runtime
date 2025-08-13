module Rubygems
  module Runtime
    module GemExtensions
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
