unless inside_travis?
  require 'simplecov' if gem_bundled?('simplecov')

  SimpleCov.start if defined?(SimpleCov)

  if defined?(RSpec)
    RSpec.configure do |config|
      config.after(:suite) do
        report_path = File.expand_path('../../../coverage/index.html', __FILE__)
        system "open #{report_path}" if File.exist?(report_path)
      end
    end
  end
end
