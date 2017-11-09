class Dose < ApplicationRecord
  belongs_to :cocktail, :ingredient

  validates :description, presence: true
end
