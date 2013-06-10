# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$('#recipe_other_extract').hide()
	$('#recipe_extract').hide()
	$('#recipe_adjunct').hide()
	$('#recipe_other_adjunct').hide()
	$('#recipe_yeast_weight').hide()
	$('#recipe_yeast_weight_unit').hide()
	$('#recipe_yeast_packs').hide()
	$('#recipe_yeast_starter_size').hide()
	$('#recipe_yeast_starter_unit').hide()

	$('#recipe_yeast_weight').show()
	$('#recipe_yeast_weight_unit').show()

	
	yeast_sel = $('#recipe_yeast_type :selected').text()

	
	if yeast_sel == "Dry" || yeast_sel == "Liquid"
		$('#recipe_yeast_weight').show()
		$('#recipe_yeast_weight_unit').show()
	
	
	styles = $('#recipe_beer_style').html()

	kits = $('#recipe_extract').html()
	$('#recipe_brewing_method').change ->
		brew_method = $('#recipe_brewing_method :selected').text()

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
		
		$('#recipe_bjcp_category').show()
		$('#recipe_bjcp_category').change ->
			cat_sel = $('#recipe_bjcp_category :selected').text()
			style_focus = $(styles).filter("optgroup[label='#{cat_sel}']").html()
			
			if style_focus
				$('#recipe_beer_style').html(style_focus)
				$('#recipe_beer_style').show()
				style_sel = $('#recipe_beer_style :selected').text()

				rec_code = brewer + "-" + style_sel + "-" + method_code
				
				$('#recipe_recipe_code').val(rec_code)
				
				
				$('#recipe_beer_style').change ->
					style_sel = $('#recipe_beer_style :selected').text()
					

					rec_code = brewer + "-" + style_sel + "-" + method_code
					
					$('#recipe_recipe_code').val(rec_code)
					
			else
				$('#recipe_beer_style').hide()

			if (brew_method != "All Grain")

			else 
				$('#recipe_extract').hide()
				$('#recipe_other_extract').hide()
				$('#recipe_other_adjunct').hide()
				$('#recipe_adjunct').hide()
				$('#recipe_sugar').hide()

	$('#recipe_original_gravity').change ->
		if $('#recipe_estimate_fg').val() != ""
			p = $('#recipe_original_gravity')
			og_strip = p.val().substring(2,5)
			og_strip_base_10 = parseInt(og_strip,10)
			

			q = $('#recipe_estimate_fg')
			fg_strip = q.val().substring(2,5)
			fg_strip_base_10 = parseInt(fg_strip,10)
			
			if og_strip_base_10 > fg_strip_base_10
				alc_result = (og_strip_base_10 - fg_strip_base_10) / 7.46
				$('#recipe_estimate_alcohol').val(Math.floor(alc_result * 100) / 100)

	$('#recipe_estimate_fg').change ->
		if $('#recipe_original_gravity').val() != ""
			p = $('#recipe_original_gravity')
			og_strip = p.val().substring(2,5)
			og_strip_base_10 = parseInt(og_strip,10)
			

			q = $('#recipe_estimate_fg')
			fg_strip = q.val().substring(2,5)
			fg_strip_base_10 = parseInt(fg_strip,10)
			
			if og_strip_base_10 > fg_strip_base_10
				alc_result = (og_strip_base_10 - fg_strip_base_10) / 7.46
				$('#recipe_estimate_alcohol').val(Math.floor(alc_result * 100) / 100)

	$('#recipe_yeast_type').change ->
		yeast = $('#recipe_yeast_type :selected').text()
		if yeast == "Dry"
			$('#recipe_yeast_weight').show()
			$('#recipe_yeast_weight_unit').show()
		else if yeast == "Liquid"
			$('#recipe_yeast_packs').show()
			$('#recipe_yeast_starter_size').show()
			$('#recipe_yeast_starter_unit').show()
	

