require 'csv'

puts "Importing brewing_methods..."
CSV.foreach(Rails.root.join("brewing_methods.csv"), headers: false) do |row|
  BrewingMethod.create! do |brewing_method|
    brewing_method.brewing_method = row[0]
    
  end
end

puts "Importing WW Kits..."
CSV.foreach(Rails.root.join("ww_kits.csv"), headers: false) do |row|
  WwBeerKits.create! do |kits|
    kits.name = row[0] 
  end
end

puts "Importing BJCP Categories..."
CSV.foreach(Rails.root.join("categories.csv"), headers: false) do |row|
  BjcpCategory.create! do |categories|
    categories.category = row[0] 
    categories.bjcp_category_id = row[1] 
  end
end

puts "Importing BJCP Beers..."
CSV.foreach(Rails.root.join("bjcp_beers.csv"), headers: false) do |row|
  BeerStyle.create! do |style|
    style.beer_style = row[0] 
    style.bjcp_category_id = row[1]
    style.ibu_min = row[2]
    style.ibu_max = row[3]
    style.srm_min = row[4]
    style.srm_max = row[5]
    style.og_min = row[6]
    style.og_max = row[7]
    style.fg_min = row[8]
    style.fg_max = row[9]
    style.abv_min = row[10]
    style.abv_max = row[11]
  end
end


puts "Importing Generic Categories..."
CSV.foreach(Rails.root.join("generic_categories.csv"), headers: false) do |row|
  GenericCategory.create! do |cat|
    cat.generic_category = row[0] 
  end
end