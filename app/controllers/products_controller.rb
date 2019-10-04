﻿class ProductsController < ApplicationController
  before_action :set_product, except: [:index,:new, :create]
  require 'payjp'
  def index
    @categories = Category.roots.all
  end

  def new
    @product = Product.new
    10.times{@product.images.build}
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
    @images=@product.images
  end

  def update
    @images=@product.images
    @product.update(product_edit_params)
    redirect_to root_path
  end

  def destroy
    @product.destroy
    redirect_to user_path(current_user)
    
  end
  
  def transaction_buy
    @adress = @product.user.adress
    @product = Product.find(params[:id])
    card = Card.where(user_id: current_user.id).first
    #Cardテーブルは前回記事で作成、テーブルからpayjpの顧客IDを検索
    if card.blank?
      #登録された情報がない場合にカード登録画面に移動
      redirect_to controller: "card", action: "new"
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def pay
    @product = Product.find(params[:id])
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
    amount: @product.price, #支払金額を入力（itemテーブル等に紐づけても良い）
    customer: card.customer_id, #顧客ID
    currency: 'jpy', #日本円
  )
  redirect_to action: 'done' #完了画面に移動 
  end

  def crente_buy
    @product.update(buy_user:current_user.id,sale: "購入")
  end

  private
  def product_params
    params.require(:product).permit(:name, :text, :category_id, :size, :brand, :status, :burden, :way, :area_id, :delivery_days,:price , images_attributes:  [:id,:src]).merge(user_id:current_user.id)
  end

  def product_edit_params
    params.require(:product).permit(:name, :text, :category_id, :size, :brand, :status, :burden, :way, :area_id, :delivery_days,:price , images_attributes:  [:_destroy,:id,:src]).merge(user_id:current_user.id)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
