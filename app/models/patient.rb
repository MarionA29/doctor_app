class Patient < ApplicationRecord
  belongs_to :city, optional: true
  has_many :appointments
  has_many :doctors, through: :appointments
end
