class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
    authorize @booking
  end

  def new
    @booked_at = params["booking"]["booked_at"]
    @product = Product.find(params["product_id"])
    @booking = Booking.new(product: @product, booked_at: @booked_at, user: current_user)
    authorize @booking
  end

  def create
    @product = Product.find(params["product_id"])
    @booking = Booking.new(booked_at: params["format"], product: @product, user: current_user)
    authorize @booking
    return redirect_to @booking if @booking.save
    render :new
  end
end
