# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$('#brew_brew_code').hide()
	$("#brew_start_date_time").datepicker
		dateFormat: 'yy-mm-dd'

		brew_code = ww_number + "-" + rec_code
		$('#brew_brew_code').val(brew_code)