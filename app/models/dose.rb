class Dose < ApplicationRecord
  belongs_to :cocktail, :ingredient

end
