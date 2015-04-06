# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  @store = Store.create(name: Faker::Name.name, address: Faker::Address.street_address)
  puts "***Store id: #{@store.id} created ***"
  rand(12).times do
    @article = Article.create(name: Faker::Name.name, description: Faker::Lorem.sentence, price: Faker::Number.number(3), total_in_shelf: Faker::Number.number(2))
    puts "***Article id: #{@article.id} created ***"
    @store.articles << @article
  end
end

