require_relative 'automated_init'

context "Extension API Version" do
  extension_api_version = Gem.extension_api_version
  control_extension_api_version = Gem.ruby_api_version

  detail extension_api_version.pretty_inspect

  test do
    assert(extension_api_version == control_extension_api_version)
  end
end
