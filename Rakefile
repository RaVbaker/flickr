require 'rake'
require 'rake/testtask'
require 'rdoc/task'
require "bundler/gem_tasks"

task :default => :test

desc 'Test the flickr plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the flickr plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Flickr'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.txt')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

task "Dump Gemspec file"
task :debug do
  puts spec.to_ruby
end
