require_relative 'automated_init'

context "Platform Predicates" do
  [
    ["Windows", :win_platform?],
    ["Java", :java_platform?],
    ["Solaris", :solaris_platform?],
    ["FreeBSD", :freebsd_platform?]
  ].each do |(platform, predicate_method)|
    context "#{platform}" do
      result = Gem.public_send(predicate_method)

      comment result.inspect

      test "Boolean" do
        assert(result == true || result == false)
      end
    end
  end
end
