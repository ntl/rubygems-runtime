require_relative 'automated_init'

context "Kernel's Gem Method" do
  gem_name = 'some_gem'
  version_requirement = '~> 1.1'

  context "Toplevel Object" do
    test "Isn't an error" do
      refute_raises do
        gem gem_name, version_requirement
      end
    end
  end

  context "Other Object" do
    object = Object.new

    test "Isn't an error" do
      refute_raises do
        gem gem_name, version_requirement
      end
    end
  end
end
