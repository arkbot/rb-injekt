$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'injekt/version'

Gem::Specification.new do |s|
  s.name          = 'injekt'
  s.version       = Injekt::VERSION
  s.authors       = ['Adam Eberlin']
  s.email         = ['ae@adameberlin.com']
  s.homepage      = 'https://github.com/arkbot/rb-injekt'
  s.summary       = 'A tiny dependency injection and context isolation library for Ruby.'
  s.description   = 'A tiny dependency injection and context isolation library for Ruby.'
  s.licenses      = ['MIT']

  s.files         = `git ls-files -z`.split("\x0").tap { |files| files.delete('Gemfile.lock') }

  s.executables   = s.files.grep(%r(^bin/)) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_runtime_dependency     'activesupport', '~> 4.2.5'
  s.add_runtime_dependency     'cleanroom',     '~> 1.0'
  s.add_runtime_dependency     'deject',        '~> 0.2'

  s.add_development_dependency 'codeclimate-test-reporter'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'fivemat'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'pry-stack_explorer'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'yard'
end
