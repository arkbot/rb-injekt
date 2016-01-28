require_relative './travis'

if inside_travis?
  require 'coveralls' if gem_bundled?('coveralls')

  Coveralls.wear! if defined?(Coveralls)
end
