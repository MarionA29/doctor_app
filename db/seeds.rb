# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all

2.times do
  city = City.create!(name: Faker::Pokemon.location)
end

20.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code: Faker::Address.zip.to_i, city_id: (rand(City.first.id..City.last.id)))
end

10.times do
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: (rand(City.first.id..City.last.id)))
end

15.times do
  appointment = Appointment.create!(date: Time.now, city_id: (rand(City.first.id..City.last.id)))
end

10.times do
  specialty = Specialty.create!
end

5.times do
  join_table = JoinTable.create!(doctor_id: (rand(Doctor.first.id..Doctor.last.id)), specialty_id: (rand(Specialty.first.id..Specialty.last.id)))
end
