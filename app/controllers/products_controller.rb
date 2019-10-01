class ProductsController < ApplicationController
  def index
    @categories = Category.roots.all
  end

  def show
    @product = Product.find(params[:id])

  end

  def new
    @product = Product.new
    @product.images.build
    @areas = Area.all
    @categories_roots = Category.roots
  end
  
  def create
    @product=Product.new(product_params)
    binding.pry
    if @product.save
      redirect_to root_path
    else
      render action: :new
    end
    
  end
  
  def transaction_buy
    @product = Product.find(params[:id])
  end
  def crente_buy
    @product = Product.find(params[:id])
    @product.update(buy_user:current_user.id,sale: "購入")
  end


  def product_params
    params.require(:product).permit(:name, :text, :category_id, :size, :brand, :status, :burden, :way, :area_id, :delivery_days,:price , images_attributes: [:src]).merge(user_id:current_user.id)
  end

end
