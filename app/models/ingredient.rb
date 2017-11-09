class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, uniqueness: true

   # TODO: validation: cant delete if used by at least one cocktail
end
