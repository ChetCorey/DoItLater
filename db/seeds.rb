# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env == 'development'

  rand(1..10).times do
    user = User.create({name: Faker::Name.name})
    rand(1..10).times do
      Todo.create({
        description: Faker::Name.name,
        deration: (rand(1..25) * 5),
        completed: [true, false].sample
      })
    end
  end

end