class ProductsController < ApplicationController
  def index 
  end

  def show
  end

  def new
    @product = Product.new
    @product.images.build
    @areas = Area.all
  end
  
  def create
    @product=Product.new(product_params)
    @product.save
    # binding.pry
  end

  def product_params
    params.require(:product).permit(:name, :text, :category_id, :size, :bland_id, :status, :burden, :way, :area_id, :delivery_days,:price , images_attributes: [:src] )
  end

  # def images_params
  #   params.require(:image).permit()
  # end

end
