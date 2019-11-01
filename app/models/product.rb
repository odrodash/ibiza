class Product < ApplicationRecord
  has_many :bookings
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  has_many :reviews, through: :bookings

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

  def self.search(query)
    sql_query = "name @@ :query OR category @@ :query"
    where(sql_query, query: "%#{query}%")
  end

  def bookings_dates
    return bookings.map { |booking| booking.booked_at }
  end

  def average_rating
    return 0 unless reviews.count.positive?

    sum = 0
    reviews.each do |review|
      sum += review.rating unless review.rating.nil?
    end
    return sum / reviews.count
  end
end
