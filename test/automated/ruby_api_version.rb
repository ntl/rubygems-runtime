require_relative 'automated_init'

context "Ruby API Version" do
  ruby_api_version = Gem.ruby_api_version
  control_ruby_api_version = RbConfig::CONFIG["ruby_version"]

  detail ruby_api_version.pretty_inspect

  test do
    assert(ruby_api_version == control_ruby_api_version)
  end
end
