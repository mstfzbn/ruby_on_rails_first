# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# brands_list = [
#     'Hyundai' , 'KIA', 'Toyota', 'Mercedes'
# ]

# brands_list.each do | brand |
#     CarBrand.create( brand )
# end

# models_list = [
#     ['Coupe', 'Hyundai'],
#     ['i20', 'Hyundai'],
#     ['Elantra', 'Hyundai'],
#     ['Sportage', 'KIA'],
#     ['ProCeed', 'KIA'],
#     ['Celica', 'Toyota'],
#     ['Yaris', 'Toyota'],
#     ['E350', 'Mercedes'],
#     ['S500', 'Mercedes']
# ]

# models_list.each do |model, brand|
#     CarModel.create( model,  brand)
# end

CarBrand.create( 'Hyundai' )

