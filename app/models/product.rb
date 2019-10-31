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

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def self.search(query)
    sql_query = "name @@ :query OR category @@ :query"
    where(sql_query, query: "%#{query}%")
  end

end
