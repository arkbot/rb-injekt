require_relative './travis'

if inside_travis?
  require 'codeclimate-test-reporter' if gem_bundled?('codeclimate-test-reporter')

  CodeClimate::TestReporter.start if defined?(CodeClimate::TestReporter)
end
