# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([
  { title: "prod1", description: "prod1 desc" },
  { title: "prod2", description: "prod2 desc" },
  { title: "prod2", description: "prod2 desc" },
  { title: "prod3", description: "prod3 desc" },
])

User.create([
  { username: "a1", password: "123456" },
  { username: "a2", password: "123456" },
  { username: "a3", password: "123456" },
  { username: "a4", password: "123456" },
  { username: "a5", password: "123456" },
  { username: "a6", password: "123456" },
  { username: "a7", password: "123456" },
])
