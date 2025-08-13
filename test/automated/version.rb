require_relative 'automated_init'

context "Version" do
  version_1 = Gem::Version.new('1.1.1')
  version_2 = Gem::Version.new('1.1.0')

  context "Greater Than" do
    comparison = version_1 <=> version_2

    control_comparison = 111 <=> 110

    comment "Comparison: #{comparison.inspect}"
    comment "Control: #{control_comparison.inspect}"

    test do
      assert(comparison == control_comparison)
    end
  end

  context "Less Than" do
    comparison = version_2 <=> version_1

    control_comparison = 110 <=> 111

    comment "Comparison: #{comparison.inspect}"
    comment "Control: #{control_comparison.inspect}"

    test do
      assert(comparison == control_comparison)
    end
  end

  context "Equal" do
    comparison = version_1 <=> version_1

    control_comparison = 111 <=> 111

    comment "Comparison: #{comparison.inspect}"
    comment "Control: #{control_comparison.inspect}"

    test do
      assert(comparison == control_comparison)
    end
  end
end
