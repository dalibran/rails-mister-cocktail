class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :ingredient_id, uniqueness: { scope: :cocktail_id }
end
