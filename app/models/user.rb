# app/models/user.rb
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Niveaux disponibles
  LEVELS = ['Débutant', 'Intermédiaire', 'Avancé'].freeze

  # Associations
  has_many :preferences, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :reviews, through: :preferences
  has_many :favorite_coffees, through: :favorites, source: :coffee

  # Enum pour le niveau
  enum level: {
    debutant: 'Débutant',
    intermediaire: 'Intermédiaire',
    avance: 'Avancé'
  }

  # Validations
  validates :level, presence: true, inclusion: { in: levels.keys }

  # Méthode pour vérifier le niveau
  def level?(check_level)
    self.level == check_level.to_s
  end
end
