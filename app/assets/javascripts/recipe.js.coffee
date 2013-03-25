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

	$('#recipe_brewing_method :selected').text("")
	
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
				$('#recipe_beer_style').empty()
				$('#recipe_beer_style').hide()

			if (brew_method != "All Grain")
				$('#recipe_extract').show()
				$('#recipe_adjunct').show()
				$('#recipe_extract').change ->
					kit_sel = $('#recipe_extract :selected').text()
					
					if (kit_sel == "Other")
						$('#recipe_other_extract').show()
				
				$('#recipe_adjunct').change ->
					adj_sel = $('#recipe_adjunct :selected').text()
					if (adj_sel == "Other")
						$('#recipe_other_adjunct').show()
			else 
				$('#recipe_extract').hide()
				$('#recipe_other_extract').hide()
				$('#recipe_other_adjunct').hide()
				$('#recipe_adjunct').hide()
				$('#recipe_sugar').hide()
				