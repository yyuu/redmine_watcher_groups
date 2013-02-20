require "watcher_groups_hook_listener"
Redmine::Plugin.register :redmine_watcher_groups do
  name 'Watcher Groups plugin'
  author 'Yamashita, Yuu'
  description 'Check issue watchers by their group.'
  version '0.0.1git'
  url 'https://github.com/redmine_watcher_groups'
  author_url 'http://www.geishatokyo.com/'
end
