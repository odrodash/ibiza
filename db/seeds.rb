# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Creating users and products"
2.times do
  name = Faker::Name.unique.name
  user = User.create(
    name: name,
    last_name: Faker::Artist.name ,
    email: Faker::Internet.email,
    address:  Faker::Address.full_address,
    password: "123456"
  )

  5.times do
    puts "creating a new poduct"
    name = Faker::Commerce::product_name
    category = Faker::Beer.brand
    description = "This product is for renting. The category is #{category}"
    photo = Unsplash::Photo.search("#{name}").first
    product = Product.new(
      name: name,
      category: category,
      description: description,
      price: rand(100..1000),
      location: Faker::Address.full_address,
      remote_photo_url: photo.urls["regular"]
    )
    product.user = user
    product.save!
  end
end
