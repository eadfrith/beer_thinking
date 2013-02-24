# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$("#brew_start_date_time").datepicker()
		dateFormat: 'yy-mm-dd'

		Morris.Line
			element: 'brew_chart'
			data: $('#brew_chart').data('fermentations')
			xkey: 'day'
			ykeys: ['temperature']
			labels: ['Temperature']