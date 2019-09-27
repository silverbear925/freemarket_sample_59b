class ProductsController < ApplicationController
  def index 
  end

  def show
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = current_user.products.build(product_params)
    @product.save
  end

  # def product_params
  #   params.require(:product).permit(:title, images_attributes: [:scr])
  # end

end
