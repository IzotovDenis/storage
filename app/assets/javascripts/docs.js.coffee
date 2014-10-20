# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@ready = ->
	$('#new_doc').fileupload
		dataType: "script"
		url: $("#folder-list").data("docPath")
		formData:{
		"doc[folder_id]": $("#folder-list").data("folder-id")
		}

$(document).ready(ready)
$(document).on('page:load', ready)
