class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointment
  belongs_to :city, optional: true
end
