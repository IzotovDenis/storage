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
		progressall: (e, data) ->
			$('.progress').show()
			progress = parseInt(data.loaded / data.total *100, 10);
			$('.status').text("Загрузка")
			$('.bar').css('width', progress + '%')
		done: (e, data) ->
			$('.status').text("Загрузка выполнена")


$(document).ready(ready)
$(document).on('page:load', ready)