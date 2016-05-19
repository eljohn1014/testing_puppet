require 'puppet-syntax/tasks/puppet-syntax'
require 'puppet-lint/tasks/puppet-lint'
require 'puppetlabs_spec_helper/rake_tasks'
require 'simplecov'

# Clear any previous definition of the rake task named 'lint'.
Rake::Task[:lint].clear

# Configure puppet-lint to ignore vendor directory
PuppetLint::RakeTask.new :lint do |config|
  config.ignore_paths = [ "vendor/**/*" ]
end

# puppet syntax check
PuppetSyntax.exclude_paths = ["vendor/**/*"]
