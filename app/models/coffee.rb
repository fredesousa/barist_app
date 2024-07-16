# app/models/coffee.rb
class Coffee < ApplicationRecord
  # Associations
  has_many :preferences, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :origin, presence: true
  validates :roaster, presence: true
  validates :strength, presence: true
  validates :coffee_type, presence: true
  validates :machine_type, presence: true
end
