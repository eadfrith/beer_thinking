# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	console.log("FWAFSY")
	states = $('#recipe_brewing_method').html()
	styles = $('#recipe_beer_style').html()
	$('#recipe_brewing_method').change ->
		console.log(styles)
		filtered_styles = $(styles).filter([name*="American"]).html()
		console.log(filtered_styles)
		brew_method = $('#recipe_brewing_method :selected').text()
		if !brew_method
			$('#recipe_beer_style').hide()
		else
			$('#recipe_beer_style').show()
		if brew_method == 'All Grain'
			$('#recipe_beer_style').html(filtered_styles)
		else
		console.log(brew_method)
