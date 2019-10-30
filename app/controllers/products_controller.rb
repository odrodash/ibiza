class ProductsController < ApplicationController
  skip_after_action :verify_authorized, only: :results
  skip_before_action :authenticate_user!, only: [:show, :results]
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
    @product.available = false
    @product.update
    redirect_to products_path
  end

  def results
    @products = policy_scope(Product).results(params[:product], params[:category])
  end

  private

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end

  def products_params
    params.require(:product).permit(:name, :description, :category, :available, :price, :state, :location, :delivery, :return, :photo, :start, :end)
  end
end
