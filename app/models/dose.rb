class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  enum unity: {ml: 0, cl: 1, gramme: 2}

end
