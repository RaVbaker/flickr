require 'rake'
require 'rake/testtask'
require "bundler/gem_tasks"
require 'yard'

task :default => :test

desc 'Test the flickr plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the flickr plugin.'
task :rdoc  => :yard

YARD::Rake::YardocTask.new do |t|
  # t.files   = ['lib/**/*.rb']   # optional
  # t.options = ['- LICENSE Changelog.txt'] # optional
end

task "Dump Gemspec file"
task :debug do
  puts spec.to_ruby
end
