class WatcherGroupsHookListener < Redmine::Hook::ViewListener
  def view_issues_form_details_bottom(context={})
    if context[:issue].id == nil
        context[:hook_caller].send(:render, :partial => "watcher_groups/watcher_groups", :locals => context)
    else
      ""
    end
  end
end

# vim:set ft=ruby sw=2 ts=2 :
