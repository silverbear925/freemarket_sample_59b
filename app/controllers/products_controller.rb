class ProductsController < ApplicationController
  def index
    @categories = Category.roots.all
  end

  def show
  end

  def new
    @product = Product.new
    @product.images.build
    @areas = Area.all
    @categories_roots = Category.roots
  end
  
  def create
    @product=Product.new(product_params)
    @product.save
    
  end

  def product_params
    params.require(:product).permit(:name, :text, :category_id, :size, :brand_id, :status, :burden, :way, :area_id, :delivery_days,:price , images_attributes: [:src]).merge(user_id:current_user.id)
  end

end
