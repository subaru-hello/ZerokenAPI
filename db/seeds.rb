# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User
user = User.create(
  uuid: SecureRandom.uuid, name: 'subaru', email: 'subaru@example.com', password: SecureRandom.uuid, liver_capacity: 0
)

# Liquor
Liquor.create([
                { name:            'Beer',
                  price:           300,
                  percentage:      '5.0',
                  amount:          500,
                  expiration_date: DateTime.now.beginning_of_day + 1.week },
                { name:            'Lemon Sour',
                  price:           200,
                  percentage:      '3.0',
                  amount:          500,
                  expiration_date: DateTime.now.beginning_of_day + 1.week }
              ])

# Diagnose
Diagnosis.create!(
  {
    alcohol_tolerance:  0,
    recommended_liquor: 3,
    alcohol_index:      '12.3',
    weight:             60,
    user:               user
  }
)
