# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  require 'faker'

  user = User.create!(
    email: 'test1@test.com',
    password: 'password'
  )

   #registered applications
  20.times do
    RegisteredApplication.create!(
      name: Faker::Lorem.sentence,
      url: Faker::Internet.url,
      user: user
    )
  end
  registered_applications = RegisteredApplication.all

  100.times do
    Event.create!(
      name: Faker::Lorem.word,
      registered_application: registered_applications.sample
    )
  end

  puts "Seed finished"
  puts "#{User.count} users created"
  puts "#{RegisteredApplication.count} registered applications created"
  puts "#{Event.count} events created"
