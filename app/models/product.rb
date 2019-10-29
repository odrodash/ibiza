class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  # validates :available, presence: true
  # validates :delivery, presence: true
  validates :price, presence: true

  # validates :cocktail, uniqueness: { scope: :ingredient, message: "only allows letters" }
end
