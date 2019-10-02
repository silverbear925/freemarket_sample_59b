class ProductsController < ApplicationController
  before_action :set_product, except: [:index,:new, :create]
  
  def index
    @categories = Category.roots.all
    # @images = Image.where(id: images.id)
  end

  def new
    @product = Product.new
    3.times{@product.images.build}
    @areas = Area.all
    @categories_roots = Category.roots
  end
  
  def create
    @product=Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def edit
    @areas = Area.all
    @categories_roots = Category.roots
 
  end

  def update
    @product=Product.update(product_params)
  end

  def destory
    @product.destory
  end
  
  def transaction_buy

  end

  def crente_buy
    @product.update(buy_user:current_user.id,sale: "購入")
  end

  private
  def product_params
    params.require(:product).permit(:name, :text, :category_id, :size, :brand, :status, :burden, :way, :area_id, :delivery_days,:price , images_attributes:  [:src]).merge(user_id:current_user.id)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
