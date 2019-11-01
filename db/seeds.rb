# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ "name": 'Star Wars' }, { "name": 'Lord of the Rings' }])
#   Character.create("name": 'Luke', movie: movies.first)

require 'faker'

categories = ["Decoracion", "Audio", "Mobiliario", "Music", "Juegos"]
products = [
  {
    "name": 'white table and lights in brown room',
    "category": "Decoracion",
    "photo": 'https://images.unsplash.com/photo-1462446892934-2c17979efefd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
  },
  {
    "name": 'Table and Chairs',
    "category": "Decoracion",
    "photo": 'https://images.unsplash.com/photo-1564865560682-cbe3c69dbfe0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'
  },
  {
    "name": 'White Ceramic Plates',
    "category": "Decoracion",
    "photo": 'https://images.unsplash.com/photo-1544813545-cbe51737035b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'
  },
  {
    "name": 'Light bulbs',
    "category": "Decoracion",
    "photo": 'https://images.unsplash.com/photo-1507494924047-60b8ee826ca9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1266&q=80'
  },
  {
    "name": 'Japanese lantern',
    "category": "Decoracion",
    "photo": 'https://images.unsplash.com/photo-1489513691500-41ef4acdb665?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
  },
  {
    "name": 'Print Glass',
    "category": "Decoracion",
    "photo": 'https://images.unsplash.com/photo-1550422787-c55fc66d7549?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
  },
  {
    "name": 'Wreath',
    "category": "Decoracion",
    "photo": 'https://images.unsplash.com/photo-1514907558033-da9156c14c95?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
  },
  {
    "name": 'Picnic - Living',
    "category": "Mobiliario",
    "photo": 'https://images.unsplash.com/photo-1544307333-94a20c9a7a5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
  },
  {
    "name": 'Living',
    "category": "Mobiliario",
    "photo": 'https://images.unsplash.com/photo-1556375976-4bd67a114be0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=620&q=80'
  },
  {
    "name": 'Rustic Table',
    "category": "Mobiliario",
    "photo": 'https://images.unsplash.com/photo-1537182534312-f945134cce34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
  },
  {
    "name": 'Round Table',
    "category": "Mobiliario",
    "photo": 'https://images.unsplash.com/photo-1511190404154-700f574540f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
  },
  {
    "name": 'BBQ Grill',
    "category": "Mobiliario",
    "photo": 'https://images.unsplash.com/photo-1572173838181-589fc8c0a10a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'
  },
  {
    "name": 'Menu Board',
    "category": "Mobiliario",
    "photo": 'https://images.unsplash.com/photo-1564512003332-4ae597b321d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'Blackboard',
    "category": "Mobiliario",
    "photo": 'https://images.unsplash.com/photo-1562089358-e5acb2c9335f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1381&q=80'
  },
  {
    "name": 'Hanging speaker',
    "category": "Audio",
    "photo": 'https://images.unsplash.com/photo-1563680401337-b77b5e0be9f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'gray microphone',
    "category": "Audio",
    "photo": 'https://images.unsplash.com/photo-1519874179391-3ebc752241dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
  },
  {
    "name": 'black and gray condenser microphone',
    "category": "Audio",
    "photo": 'https://images.unsplash.com/photo-1561480040-97000c1a2f8d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'black audio mixer',
    "category": "Audio",
    "photo": 'https://images.unsplash.com/photo-1511924473169-58650b22e48f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'white speaker',
    "category": "Audio",
    "photo": 'https://images.unsplash.com/photo-1436473849883-bb3464c23e93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'brown and black speaker indoor',
    "category": "Audio",
    "photo": 'https://images.unsplash.com/photo-1517756548657-b2c24162e63d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'black speaker',
    "category": "Audio",
    "photo": 'https://images.unsplash.com/photo-1531104985437-603d6490e6d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1023&q=80'
  },
  {
    "name": 'white and brown jukebox',
    "category": "Music",
    "photo": 'https://images.unsplash.com/photo-1553988672-830166c30d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'wireless headphones',
    "category": "Music",
    "photo": 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'Guitar',
    "category": "Music",
    "photo": 'https://images.unsplash.com/photo-1508186736123-44a5fcb36f9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": "Piano",
    "category": "Music",
    "photo": 'https://images.unsplash.com/photo-1523713947078-b1787c791b96?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  },
  {
    "name": 'White electric guitar & black amplifier',
    "category": "Music",
    "photo": 'https://images.unsplash.com/photo-1540281811908-3614b2e5c56b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'Assorted guitar pedal',
    "category": "Music",
    "photo": 'https://images.unsplash.com/photo-1494049694820-92a3163b10ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'Saxophone',
    "category": "Music",
    "photo": 'https://images.unsplash.com/photo-1566454108377-77a89ec31134?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'Arcade',
    "category": "Juegos",
    "photo": 'https://images.unsplash.com/photo-1511512578047-dfb367046420?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'Jenga',
    "category": "Juegos",
    "photo": 'https://images.unsplash.com/photo-1558939608-7e8f4c8336d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'Pool',
    "category": "Juegos",
    "photo": 'https://images.unsplash.com/photo-1534463868211-1203a5c900a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    "name": 'Pool',
    "category": "Juegos",
    "photo": 'https://images.unsplash.com/photo-1519624890427-30919b999849?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  }
]

puts "Destroying all seeds"
Review.destroy_all
Booking.destroy_all
Product.destroy_all
User.destroy_all

puts "Creating new seeds"

puts "Creating users and products"

i = 0
products[i]["name"]
4.times do

  name = Faker::Name.unique.name
  user = User.create(
    name: name,
    last_name: Faker::Artist.name ,
    email: Faker::Internet.email,
    address:  Faker::Address.country_by_code(code: 'AR'),
    password: "123456"
  )

  6.times do
    puts "creating a new poduct"
    name = products[i][:name]
    category = products[i][:category]
    description = "This product is for renting. The category is #{category}"
    # photo = Unsplash::Photo.search("#{name}").first
    photo = products[i][:photo]

    product = Product.new(
      name: name,
      category: category,
      description: description,
      price: rand(100..1000),
      location: Faker::Address.country_by_code(code: 'AR'),
      remote_photo_url: photo
    )
    product.user = user
    product.save!
    i += 1
  end
end

puts "Finished seeding process"
