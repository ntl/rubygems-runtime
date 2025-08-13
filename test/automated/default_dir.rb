require_relative 'automated_init'

context "Default Dir" do
  default_dir = Gem.default_dir

  exists = File.directory?(default_dir.to_s)

  test "Exists" do
    assert(exists)
  end
end
