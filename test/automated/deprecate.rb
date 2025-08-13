require_relative 'automated_init'

context "Deprecate" do
  cls = Class.new do
    def some_instance_method
    end

    extend Gem::Deprecate
  end

  context "Declaration" do
    test "Isn't an error" do
      refute_raises do
        cls.deprecate(:some_instance_method, 'X.z', 2000, 1)
      end
    end
  end

  context "Invocation" do
    instance = cls.new

    refute_raises do
      instance.some_instance_method
    end
  end
end
