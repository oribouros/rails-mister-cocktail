class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy #it just returns false, and doesnt allow to delete the cocktail.
  has_many :ingredients, through: :doses
end
