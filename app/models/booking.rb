class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :reviews, dependent: :destroy
end
