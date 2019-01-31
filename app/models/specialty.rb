class Specialty < ApplicationRecord
  has_many :join_tables
  has_many :doctors, through: :join_tables
end
