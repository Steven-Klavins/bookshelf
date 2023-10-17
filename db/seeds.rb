# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Author.create!(
  first_name: "Christopher",
  last_name: "Paolini",
  dob: Date.new(1983,11,17),
  is_alive: true
)

Author.create!(
  first_name: "George",
  last_name: "Orwell",
  dob: Date.new(1903,06,25),
  is_alive: false
)

