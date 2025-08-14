puts <<~TEXT

#{$0}
= = =
TEXT

puts "require 'rubygems'"
require 'rubygems'

puts "require_relative '../../load_path'"
require_relative '../../load_path'

puts "require 'bundler/setup'"
require 'bundler/setup'

puts "require 'rubygems/runtime' (should raise an error)"
require 'rubygems/runtime'

puts "\e[1;97;30mUnreachable\e[m"
