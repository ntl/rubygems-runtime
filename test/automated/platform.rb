require_relative 'automated_init'

context "Local Platform" do
  local_platform = Gem::Platform.local

  comment local_platform.pretty_inspect

  test do
    assert(local_platform.instance_of?(Gem::Platform))
  end
end
