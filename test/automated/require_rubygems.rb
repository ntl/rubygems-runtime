require_relative 'automated_init'

context "Require Rubygems" do
  test "Is a LoadError" do
    assert_raises(LoadError) do
      require 'rubygems'
    end
  end
end
