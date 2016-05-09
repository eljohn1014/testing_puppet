require 'puppet-lint/tasks/puppet-lint'

# Clear any previous definition of the rake task named 'lint'.
Rake::Task[:lint].clear

# Configure puppet-lint to ignore vendor directory
PuppetLint::RakeTask.new :lint do |config|
  config.ignore_paths = [ "vendor/**/*" ]
end
