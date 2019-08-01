class Specialty < ApplicationRecord
	has_many :field
    has_many :doctor, through: :field
end
