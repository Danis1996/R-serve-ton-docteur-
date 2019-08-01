require 'faker'

100.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name,  last_name:Faker::Name.last_name, zip_code:Faker::Address.zip_code, city_id:Faker::Number.within(range: 1..100))
end

100.times do
  patient = Patient.create!(first_name: Faker::Name.first_name,  last_name:Faker::Name.last_name, city_id:Faker::Number.within(range: 1..100))
end

100.times do
  appointment = Appointment.create!(date: Faker::Date.forward(days: 30), city_id:Faker::Number.within(range: 1..100), doctor_id:Faker::Number.within(range: 1..100), patient_id:Faker::Number.within(range: 1..100))
end

100.times do
  city = City.create!(city: Faker::Address.city)
end

100.times do
  field = Field.create!(specialty_id:Faker::Number.within(range: 1..20), doctor_id:Faker::Number.within(range: 1..100))
end

100.times do
  specialty = Specialty.create!(specialty: Faker::Job.education_level)
end