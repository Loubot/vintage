# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Shop.create(description: "Online Vintage Clothing Store. Everything from vintage dresses to sequins tops, menswear and some handmade and reworked items too. Check out www.turquoiseflamingo.com", name: 'Turquoise Flamingo',url:'www.turquoiseflamingo.com', logo:'turquoise.png', address: 'This house')
Shop.create(name: 'The Vintage Shop', url:'www.yahoo.com',address: '1 Main Street', description: "The vintage store boi")
Item.create(name:'Lovely Dress', description: 'A lovely vintage dress', size: 11, shop_id: 1, price:22.50, available: true)
Merchant.create(email:'turquoiseflamingo@live.ie',email_confirmation:'turquoiseflamingo@live.ie', first_name: 'Cathy', last_name: "O'Donoghue", address: 'This house', website:'www.turquoiseflamingo.com', phone: '0877553302')
#shop name: nil, logo: nil, url: nil, address: nil, lat: nil, lon: nil, facebook: nil, twitter: nil, created_at: nil, updated_at: nil, description: nil> 
#Merchant(id: integer, email: string, first_name: string, last_name: string, address: string, website: string, phone: integer, created_at: datetime, updated_at: datetime) 

