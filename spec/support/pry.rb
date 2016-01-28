require_relative './travis'

require 'pry' if gem_bundled?('pry') && !inside_travis?
