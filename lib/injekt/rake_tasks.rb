require 'injekt/dependencies'

task_directory = File.join(File.dirname(__FILE__), 'tasks/**/*.rake')

Dir[task_directory].each { |f| load f }
