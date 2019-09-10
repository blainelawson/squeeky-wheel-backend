# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'pry'

10.times do |i|
    Issue.create(name: Faker::GreekPhilosophers.name, desc: Faker::GreekPhilosophers.quote, date: Faker::Date.backward(days: 365))
    User.create(name: Faker::Name.name, zipcode: Faker::Address.zip, password: "password")
end

10.times do |i|
    user = User.find_by(id: (i+1))
    rand(0..10).times do |i2|
        user.issues << Issue.all[rand(0..9)]
    end
    user.issues = user.issues.uniq
    user.save
end