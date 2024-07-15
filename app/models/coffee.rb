class Coffee < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :origin, presence: true
  validates :roaster, presence: true
  validates :strength, presence: true
  validates :coffee_type, presence: true
  validates :machine_type, presence: true
  validates :name, uniqueness: { scope: [:origin, :roaster] }
end
