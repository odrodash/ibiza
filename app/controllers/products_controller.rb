class ProductsController < ApplicationController
  skip_after_action :verify_authorized, only: :search
  skip_before_action :authenticate_user!, only: [:show, :search]
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = policy_scope(Product)
  end

  def show
    @booking = Booking.new
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(products_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
    authorize @product
  end

  def edit
  end

  def update
    @product.update(products_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    # @product.available = false
    authorize @product
    @product.destroy
    redirect_to user_path(current_user)
  end

  def search
    @search = params["product"]
    @search = params["product"]["name"] if @search.nil?
    @products = policy_scope(Product).search(@search)
    @products = @products.geocoded #returns products with coordinates

    @markers = @products.map do |product|
      {
        lat: product.latitude,
        lng: product.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { product: product }),
        image_url: helpers.asset_url('mappin.png')
      }
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end

  def products_params
    params.require(:product).permit(:name, :description, :category, :available, :price, :state, :location, :latitude, :longitude, :delivery, :return, :photo, :start, :end)
  end
end
