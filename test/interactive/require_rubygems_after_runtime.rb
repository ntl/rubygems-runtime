require_relative '../test_init'

def some_method
  some_other_method
end

def some_other_method
  yet_another_method
end

def yet_another_method
  require "rubygems"
end

some_method
