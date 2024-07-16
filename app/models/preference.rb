# app/models/preference.rb
class Preference < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :coffee

  # Validations
  validates :habit, presence: true
  validates :machine_type, presence: true
  validates :coffee_type, presence: true

  
end
