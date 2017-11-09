class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, uniquiness: true

   # TODO: validation: cant delete if used by at least one cocktail
end