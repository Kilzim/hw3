Place.destroy_all

chicago = Place.new
chicago["name"] = "Chicago"
chicago.save

miami = Place.new
miami["name"] = "Miami"
miami.save

los_angeles = Place.new
los_angeles["name"] = "Los Angeles"
los_angeles.save

new_orleans = Place.new
new_orleans["name"] = "New Orleans"
new_orleans.save

puts "There are now #{Place.all.count} Places."