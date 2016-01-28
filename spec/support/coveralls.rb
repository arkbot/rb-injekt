require_relative './travis'

if inside_travis?
  require 'coveralls' if gem_bundled?('coveralls')

  if defined?(Coveralls)
    Coveralls.wear!
  end
end
