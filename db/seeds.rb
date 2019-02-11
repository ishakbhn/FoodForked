# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

food_list = [
  {name: "Chicken Rice", cuisine: "Chinese", calories: 607, price: 3.50},
  {name: "Chendol", cuisine: "Chinese", calories: 386, price: 2.50},
  {name: "Fried Bee Hoon", cuisine: "Chinese", calories: 427, price: 2.00},
  {name: "Mee Goreng", cuisine: "Indian", calories: 500, price: 4.50},
  {name: "Laksa", cuisine: "Chinese", calories: 591, price: 4.00},
  {name: "Nasi Lemak", cuisine: "Malay", calories: 657, price: 3.50},
  {name: "Mee Siam", cuisine: "Malay", calories: 694, price: 3.00},
  {name: "Chicken Chop", cuisine: "Western", calories: 390, price: 5.00},
  {name: "Fish n Chips", cuisine: "Western", calories: 570, price: 3.50},
  {name: "Aglio Olio", cuisine: "Western", calories: 355, price: 8.00},
  {name: "Lasagna", cuisine: "Western", calories: 400, price: 7.00},
  {name: "Chee Cheong Fun", cuisine: "Chinese", calories: 132, price: 1.50},
  {name: "Waffle", cuisine: "Chinese", calories: 192, price: 5.50},
  {name: "Teh Tarik", cuisine: "Indian", calories: 9, price: 3.50},
  {name: "Prata", cuisine: "Indian", calories: 122, price: 1.50},
  {name: "Curry Puff", cuisine: "Malay", calories: 190, price: 1.20},
  {name: "Pad Thai", cuisine: "Thai", calories: 299, price: 5.00},
  {name: "Beef Noodle", cuisine: "Thai", calories: 362, price: 6.00},
  {name: "Seafood Tom Yam", cuisine: "Thai", calories: 362, price: 7.00},
  {name: "Granola", cuisine: "Western", calories: 60, price: 2.50},
  {name: "Coco Crunch", cuisine: "Western", calories: 120, price: 1.50},
  {name: "Mee Rebus", cuisine: "Malay", calories: 555, price: 2.50},
  {name: "Lontong", cuisine: "Malay", calories: 466, price: 3.00},
  {name: "Mee Soto", cuisine: "Malay", calories: 520, price: 3.00},
  {name: "Teriyaki Chicken Bento", cuisine: "Japanese", calories: 180, price: 8.00},
  {name: "Ramen", cuisine: "Japanese", calories: 170, price: 7.00},
  {name: "Tuna Sashimi", cuisine: "Japanese", calories: 80, price: 8.00},
  {name: "Chuka Hotate", cuisine: "Japanese", calories: 72, price: 8.00},
  {name: "Bulgogi", cuisine: "Korean", calories: 72, price: 7.00},
  {name: "Kimchi Ramen", cuisine: "Korean", calories: 260, price: 6.00},
]

def create_food (list)
  list.each do |item|
    Food.create(name: item[:name], cuisine: item[:cuisine], calories: item[:calories], price: item[:price])
  end
end

create_food(food_list)