class Product < ApplicationRecord
  has_many :bookings
  belongs_to :user
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  # validates :available, presence: true
  # validates :delivery, presence: true
  validates :price, presence: true

  # validates :cocktail, uniqueness: { scope: :ingredient, message: "only allows letters" }
end
