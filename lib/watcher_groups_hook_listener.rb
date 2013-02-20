class WatcherGroupsHookListener < Redmine::Hook::ViewListener
# def view_issues_form_details_bottom(context={})
#   controller = context[:controller]
#   if controller and controller.action_name == "new"
#     controller.send(:render_to_string, {
#       :partial => "watcher_groups/watcher_groups",
#       :locals => context,
#     })
#   else
#     ""
#   end
# end
  render_on :view_issues_form_details_bottom, :partial => "watcher_groups/watcher_groups"
end

# vim:set ft=ruby sw=2 ts=2 :
