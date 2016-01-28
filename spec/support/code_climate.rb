require_relative './travis'

if inside_travis?
  require 'codeclimate-test-reporter' if gem_bundled?('codeclimate-test-reporter')

  if defined?(CodeClimate::TestReporter)
    CodeClimate::TestReporter.start
  end
end
