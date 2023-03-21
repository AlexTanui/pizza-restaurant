# In seeds.rb or any other file you use to populate your database

puts "seeding in progress!"
# Create 10 restaurants
10.times do
    Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.full_address
    )
  end
  
  # Create 20 pizzas
  20.times do
    Pizza.create(
      name: Faker::Food.dish,
      ingredients: Faker::Food.ingredient
    )
  end
  
  # Create 50 restaurant pizzas with random prices
  50.times do
    RestaurantPizza.create(
      restaurant: Restaurant.all.sample,
      pizza: Pizza.all.sample,
      price: rand(1..30)
    )
  end
  puts "done seeding"