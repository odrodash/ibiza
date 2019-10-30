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
  DELIVERY = ["Recibirlo (recargo +10%)", "Pasar a buscarlo"]
  # validates :cocktail, uniqueness: { scope: :ingredient, message: "only allows letters" }

  def self.results(name, category)
    products = []
    products = Product.where(["name LIKE ? and category = ?", "%#{name}%", category])
    return products
  end
end
