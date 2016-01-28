require_relative './travis'

if inside_travis?
  if defined?(Coveralls)
    Coveralls.wear!
  end
end
