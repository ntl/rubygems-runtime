require_relative 'automated_init'

context "Target RbConfig" do
  target_rbconfig = Gem.target_rbconfig
  control_rbconfig = RbConfig::CONFIG

  detail target_rbconfig.pretty_inspect

  test do
    assert(target_rbconfig == control_rbconfig)
  end
end
