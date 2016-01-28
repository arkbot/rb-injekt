require_relative './travis'

if inside_travis?
  if defined?(CodeClimate::TestReporter)
    CodeClimate::TestReporter.start
  end
end
