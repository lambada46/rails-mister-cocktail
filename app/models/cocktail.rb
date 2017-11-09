class Cocktail < ApplicationRecord
  has_many :ingredients
  has_many :doses, dependent: :destroy

  validates :name, presence: true
  validates :name, uniquiness: true
end