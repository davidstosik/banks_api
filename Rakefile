$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "banks_api/version"
require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

task :build do
  system "gem build banks_api.gemspec"
end

task release: :build do
  system "gem push banks_api-#{BanksApi::VERSION}"
end

task :default => :test
