require 'rails_helper'

describe Product do
  describe '#create' do

    it "is invalid without a name" do
      product = build(:product, name: "")
      product.valid?
      expect(product.errors[:name]).to include("を入力してください")
    end

    it "is invalid without a text" do
      product = build(:product, text: "")
      product.valid?
      expect(product.errors[:text]).to include("を入力してください")
    end

    it "is invalid without a category_id" do

      product = build(:product, category_id: "")
      product.valid?
      expect(product.errors[:category_id]).to include("を入力してください")

    end

    it "is invalid without a status" do
      product = build(:product, status: "")
      product.valid?
      expect(product.errors[:status]).to include("を入力してください")
    end

    it "is invalid without a area_id" do
      product = build(:product, area_id: "")
      product.valid?
      expect(product.errors[:area_id]).to include("を入力してください")
    end

    it "is invalid without a delivery_days" do
      product = build(:product, delivery_days: "")
      product.valid?
      expect(product.errors[:delivery_days]).to include("を入力してください")
    end

    it "is invalid without a user_id" do
      product = build(:product, user_id: "")
      product.valid?
      expect(product.errors[:user_id]).to include("を入力してください")
    end

    it "is invalid without a burden" do
      product = build(:product, burden: "")
      product.valid?
      expect(product.errors[:burden]).to include("を入力してください")
    end

    it "is invalid without a way" do
      product = build(:product, way: "")
      product.valid?
      expect(product.errors[:way]).to include("を入力してください")
    end

    it "is invalid without a price" do
      product = build(:product, price: "")
      product.valid?
      expect(product.errors[:price]).to include("を入力してください")
    end

    it "is valid with all" do
      product = build(:product)
      expect(product).to be_vailid
    end
  end
end