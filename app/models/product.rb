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
  CATEGORY = ["Audio", "Decoracion", "Mobiliario", "Juegos", "Luces", "Otros"]

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def self.results(name, category)
    return Product.where(["name LIKE ? and category = ?", "%#{name}%", category])
  end

  def bookings_dates
    return bookings.map { |booking| booking.booked_at }
  end

  # def bookings_available
  #   dates = []
  #   self.map do |product|
  #     dates << product.start
  #     dates << product.end
  #   end
  #   return dates
  # end
end
