begin
  require 'pry-byebug'
  require 'pry-stack_explorer'
rescue LoadError
  nil
end

Pry.config.pager = :less
