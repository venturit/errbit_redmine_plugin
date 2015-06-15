require "errbit_redmine_plugin/version"
require 'errbit_redmine_plugin/issue_tracker'
require 'errbit_redmine_plugin/rails'

module ErrbitRedminePlugin
  def self.root
    File.expand_path '../..', __FILE__
  end
end
def self.read_static_file(file)
    File.read(File.join(self.root, 'static', file))
end
ErrbitPlugin::Registry.add_issue_tracker(ErrbitRedminePlugin::IssueTracker)
