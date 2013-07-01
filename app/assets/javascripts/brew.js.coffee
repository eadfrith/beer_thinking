# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->

	$('#brew_brewing_method').val(brewing_method)
	$('#brew_overall_beverage_style').val(overall_beverage_style)
	$('#brew_bjcp_beer_style').val(bjcp_beer_style)
	$('#brew_beer_thinker').val(brewer)
	$('#brew_recipe_name').val(recipe_name)
	console.log (bjcp_beer_style)

	$('#brew_brew_code').hide()
	$("#brew_start_date_time").datepicker
		dateFormat: 'yy-mm-dd'

	brew_code = brewer + "-" + rec_code
	$('#brew_brew_code').val(brew_code)
	console.log "FWAF"
	$('#brew_actual_og').change ->
		console.log "OG Change"
		if $('#brew_estimate_fg').val() != ""
			p = $('#brew_actual_og')
			og_strip = p.val().substring(2,5)
			og_strip_base_10 = parseInt(og_strip,10)
		
			
			q = $('#brew_estimate_fg')
			fg_strip = q.val().substring(2,5)
			fg_strip_base_10 = parseInt(fg_strip,10)
			
			if og_strip_base_10 > fg_strip_base_10
				alc_result = (og_strip_base_10 - fg_strip_base_10) / 7.46
				$('#brew_alcohol_percentage').val(Math.floor(alc_result * 100) / 100)

	$('#brew_estimate_fg').change ->
		console.log "FG Change"
		if $('#brew_actual_og').val() != ""
			p = $('#brew_actual_og')
			og_strip = p.val().substring(2,5)
			og_strip_base_10 = parseInt(og_strip,10)
			

			q = $('#brew_estimate_fg')
			fg_strip = q.val().substring(2,5)
			fg_strip_base_10 = parseInt(fg_strip,10)
			
			if og_strip_base_10 > fg_strip_base_10
				alc_result = (og_strip_base_10 - fg_strip_base_10) / 7.46
				$('#brew_alcohol_percentage').val(Math.floor(alc_result * 100) / 100)