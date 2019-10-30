class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
      authorize @product
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(products_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.available = false
    @product.update
    redirect_to products_path
  end

  private

  def products_params
    params.require(:product).permit(:name, :description, :category, :available, :price, :state, :location, :delivery, :return, :photo)
    authorize @product
  end
end

