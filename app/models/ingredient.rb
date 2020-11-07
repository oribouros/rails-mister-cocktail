class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :doses # dependent: :restrict_with_error

  scope :ordered, -> { order(name: :asc) } # to add the ordered list, go google scope on validations
end
