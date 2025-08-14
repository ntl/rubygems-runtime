require_relative 'automated_init'

context "Path" do
  paths = Gem.path
  control_paths = [Gem.default_dir]

  comment paths.pretty_inspect
  detail "Control:", control_paths.pretty_inspect

  test do
    assert(paths == control_paths)
  end
end
