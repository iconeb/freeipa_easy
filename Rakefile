require "bundler/gem_tasks"
task :default => :spec
task :console do
  exec "irb -r idm_poc -I ./lib"
end
task :test do
  exec "ruby ./test/*"
end

