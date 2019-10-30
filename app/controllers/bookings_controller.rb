class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    @product = Product.find(params["product_id"])
    authorize @booking
  end

  def create
    @booking = Booking.new
    @product = Product.find(params["product_id"])
    @booking.product = @product
    @booking.user = current_user
    @booking.save
    redirect_to booking_path(@booking)
    authorize @booking
  end
end
