class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  LEVEL = ['Débutant', 'Intermédiaire', 'Avancé'].freeze

  enum level: {
    debutant: 'Débutant',
    intermediaire: 'Intermédiaire',
    avance: 'Avancé'
  }

  validates :level, presence: true, inclusion: { in: levels.keys }
end
