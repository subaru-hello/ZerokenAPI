# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

# User
user = User.create(
  uuid: SecureRandom.uuid, name: 'subaru', email: 'subaru@example.com', password: SecureRandom.uuid, liver_capacity: 0
)

# Liquor
CSV.foreach('sake.csv', headers: true) do |row|
  Liquor.create(
    { name:            row['name'],
      price:           row['price'],
      percentage:      row['percentage'],
      amount:          row['amount'],
      expiration_date: DateTime.now.beginning_of_day + 1.week }
  )
end

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
