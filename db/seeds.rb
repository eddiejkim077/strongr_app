# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plan.destroy_all
Plan.create(
    name: 'Monday Plan',
    user: User.first
)


Exercise.destroy_all

Exercise.create(
    name:
    weight: 10,
    reps: 10, 
    sets: 10, 
    body_part: 'Back', 
    completed: false,
    plan: Plan.first
)





