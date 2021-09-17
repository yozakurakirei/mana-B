# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# admin user
User.create!(name: "admin",
             email: "admin@example.com",
             password: "password",
             password_confirmation: "password",
             admin: true)

User.create!(name: "阿良々木暦",
             email: "araragi@example.com",
             password: "password",
             password_confirmation: "password")

User.create!(name: "システム部",
             email: "system@exaple.com",
             password: "password",
             password_confirmation: "password",
             admin: true)