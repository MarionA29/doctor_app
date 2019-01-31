class Doctor < ApplicationRecord
  belongs_to :city, optional: true
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments
  has_many :join_tables
  has_many :specialties, through: :join_tables
end
