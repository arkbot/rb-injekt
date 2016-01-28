require 'rubocop/rake_task'

RuboCop::RakeTask.new(:rubocop) do |task|
  task.options = ['-c', '.rubocop.yml']
  task.fail_on_error = true
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

def run_linter(linter_task, linter_files = nil)
  if linter_files.nil? || linter_files.try(:any?)
    puts "\n=> #{linter_task} running"
    Rake::Task[linter_task].invoke
    puts "=> #{linter_task} passed"
  else
    puts "=> #{linter_task} - no files found"
  end

  true
rescue StandardError
  puts "=> #{linter_task} failed"
  false
end

ALL_LINTERS = {
  rubocop: nil
}.freeze

namespace :linters do
  desc 'Run all linters'
  task :all do
    results = ALL_LINTERS
      .map { |linter, files| run_linter(linter, files).to_s }
      .join(' && ')

    system results
  end
end
