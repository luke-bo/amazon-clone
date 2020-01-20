class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      flash[:alert] = @product.errors.full_messages
      render :new
    end
  end

  def index
  end

  def edit
  end

  def show
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price)
  end
end
