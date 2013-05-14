# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$('#recipe_bjcp_category').hide()
	$('#recipe_beer_style').hide()
	$('#recipe_other_extract').hide()
	$('#recipe_extract').hide()
	$('#recipe_adjunct').hide()
	$('#recipe_other_adjunct').hide()
	$('#recipe_recipe_code').hide()
	$('#recipe_yeast_weight').hide()
	$('#recipe_yeast_weight_unit').hide()
	$('#recipe_yeast_packs').hide()
	$('#recipe_yeast_starter_size').hide()
	$('#recipe_yeast_starter_unit').hide()

	$('#recipe_yeast_weight').show()
	$('#recipe_yeast_weight_unit').show()


	
	yeast_sel = $('#recipe_yeast_type :selected').text()
	brew_method = $('#recipe_brewing_method :selected').text()

	if brew_method == "WW Standard Kits"
		$('#recipe_brewing_method').show()
		$('#recipe_bjcp_category').show()
	
	if yeast_sel == "Dry" || yeast_sel == "Liquid"
		$('#recipe_yeast_weight').show()
		$('#recipe_yeast_weight_unit').show()
	
	
	styles = $('#recipe_beer_style').html()

	kits = $('#recipe_extract').html()
	$('#recipe_brewing_method').change ->
		brew_method = $('#recipe_brewing_method :selected').text()
		$('#recipe_bjcp_category').show()
		$('#recipe_bjcp_category').change ->
			cat_sel = $('#recipe_bjcp_category :selected').text()
			style_focus = $(styles).filter("optgroup[label='#{cat_sel}']").html()
			
			if style_focus
				$('#recipe_beer_style').html(style_focus)
				$('#recipe_beer_style').show()


				
				style_sel = $('#recipe_beer_style :selected').text()
				$('#recipe_beer_style').change ->
					style_sel = $('#recipe_beer_style :selected').text()
					if brew_method == "Extract"
						method_code = "Ex"
					else if brew_method == "Extract + Steeping"
						method_code = "ExSt"
					else if brew_method == "Partial Mash"
						method_code = "PtlMsh"
					else if brew_method == "All Grain"
						method_code = "AG"
					else if brew_method == "WW Standard Kits"
						method_code = "Ex"
					else if brew_method = "WW Advanced"
						method_code = "ExSt"
					rec_code = ww_number + "-" + style_sel + "-" + method_code
					
					$('#recipe_recipe_code').val(rec_code)
			else
				#TESTING TAKING THIS OUT $('#recipe_beer_style').empty()
				$('#recipe_beer_style').hide()

			if (brew_method != "All Grain")

			else 
				$('#recipe_extract').hide()
				$('#recipe_other_extract').hide()
				$('#recipe_other_adjunct').hide()
				$('#recipe_adjunct').hide()
				$('#recipe_sugar').hide()

	$('#recipe_yeast_type').change ->
		yeast = $('#recipe_yeast_type :selected').text()
		if yeast == "Dry"
			$('#recipe_yeast_weight').show()
			$('#recipe_yeast_weight_unit').show()
		else if yeast == "Liquid"
			$('#recipe_yeast_packs').show()
			$('#recipe_yeast_starter_size').show()
			$('#recipe_yeast_starter_unit').show()
	

