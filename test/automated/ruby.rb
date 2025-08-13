require_relative 'automated_init'

context "Ruby" do
  ruby = Gem.ruby
  control_ruby = RbConfig.ruby

  comment ruby.inspect
  detail "Control: #{control_ruby.inspect}"

  test do
    assert(ruby == control_ruby)
  end
end
