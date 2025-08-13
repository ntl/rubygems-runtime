module Rubygems
  module Runtime
    def self.activate(target=nil)
      target ||= Gem

      target.extend(GemExtensions)

      target.class_variable_set(:@@win_platform, nil)
    end
  end
end
