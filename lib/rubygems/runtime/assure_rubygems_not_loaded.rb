if not defined?(Gem::VERSION)
  return
end

message = String.new

if STDERR.tty?
  message << "\e[31m"
else
  message << "ERROR: "
end

message << "Rubygems has already been required; ‘"

if STDERR.tty?
  message << "\e[1m"
end

message << "rubygems/runtime"

if STDERR.tty?
  message << "\e[22m"
end

message << "’ won't load"

if STDERR.tty?
  message << "\e[m"
end

env_strict = ENV.fetch('RUBYGEMS_RUNTIME_STRICT') do
  default = 'off'

  warn "RUBYGEMS_RUNTIME_STRICT isn't set. Using '#{default}' by default"

  default
end

strict = env_strict == 'on'

if strict
  abort message
else
  warn message
end
