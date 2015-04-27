var userNamesDictionaryCache = null;

function getUserNamesDictionary() {
	if (userNamesDictionaryCache == null) {			
		userNamesDictionaryCache = JSON.parse($("#user_names_dictionary").text());			
	}	
	return userNamesDictionaryCache;
}

function checkWatcher (id, value) {
	found = $('#watchers_inputs').find("#issue_watcher_user_ids_" + id);
	userName = getUserNamesDictionary()[id];
	if (found.length == 0) {
		var label = $('<label class="floating" />');
		label.attr('id', 'issue_watcher_user_ids_' + id);		 
		var checkbox = $('<input checked="checked" name="issue[watcher_user_ids][]" type="checkbox" />');
		checkbox.val(id);
		checkbox.prop('checked', value);
		label.append(checkbox);
		label.append(userName);
		$('#watchers_inputs').append(label);
	} else {
	  found.find("input").prop("checked", value);
	}
}

function checkWatchers(ids, value, groupId) {
  for(var i=0; i< ids.length; i++) {
    checkWatcher(ids[i], value);
  }
}
