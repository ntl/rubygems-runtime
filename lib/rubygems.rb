# Intercept ‘require "rubygems"’ and exit Ruby with a nonzero status

message = String.new

if STDERR.tty?
  message << "\e[31m"
else
  message << "ERROR: "
end

message << "An attempt to require Rubygems was made; ‘"

if STDERR.tty?
  message << "\e[1m"
end

message << "rubygems/runtime"

if STDERR.tty?
  message << "\e[22m"
end

message << "’ prevented it"

if STDERR.tty?
  message << "\e[m"
end

STDERR.puts(message)

random_feature = 'rubygems-' + rand(2 ** 64).to_s(36)

begin
  require random_feature
rescue LoadError => random_feature_load_error
  message = random_feature_load_error.message.sub(random_feature, 'rubygems')

  backtrace_locations = caller_locations[1..]

  raise LoadError, message, backtrace_locations, cause: nil
end
