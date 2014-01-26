# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

ShowStyle = 
	getStyleData: (style_sel) ->
		if style_sel == '1A Lite American Lager'
			style_data = 'IBUs: 8 – 12  SRM: 2 – 3  OG: 1.028 – 1.040 FG: 0.998 – 1.008 
 ABV: 2.8 – 4.2%'


jQuery ->



	$('#recipe_other_extract').hide()
	$('#recipe_extract').hide()
	$('#recipe_adjunct').hide()
	$('#recipe_other_adjunct').hide()
	
	$('#recipe_yeast_weight').show()
	$('#recipe_yeast_weight_unit').show()

	
	yeast_sel = $('#recipe_yeast_type :selected').text()

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
		
		$('#recipe_generic_category').change ->
			generic_style_sel = $('#recipe_generic_category :selected').text()
			rec_code = brewer + "-" + generic_style_sel + "-" + method_code
			
			$('#recipe_recipe_code').val(rec_code)

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

					
					style_sp = ShowStyle.getStyleData(style_sel)

					console.log (style_sp)

					$('#recipe_style_spec').val(style_sp)

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

	