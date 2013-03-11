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
    categories.bjcp_category = row[1] 
  end
end

puts "Importing BJCP Beers..."
CSV.foreach(Rails.root.join("bjcp_beers.csv"), headers: false) do |row|
  BeerStyle.create! do |style|
    style.beer_style = row[0] 
    style.bjcp_category = row[1]
  end
end