require 'rails_helper'
describe Product do
  describe '#edit' do

    it "is invalid without a id" do
      product = build(:product, id: nil)
      product.valid?
      expect(product.errors[:id]).to include("が入力されていません。")
    end

    it "is invalid without a name" do
      product = build(:product, name: nil)
      product.valid?
      expect(product.errors[:name]).to include("が入力されていません。")
    end

    it "is invalid without a category_id" do
      product = build(:product, category_id: nil)
      product.valid?
      expect(product.errors[:category_id]).to include("が入力されていません。")
    end

    it "is invalid without a text" do
      product = build(:product, text: nil)
      product.valid?
      expect(product.errors[:text]).to include("が入力されていません。")
    end

    it "is invalid without a status" do
      product = build(:product, status: nil)
      product.valid?
      expect(product.errors[:status]).to include("が入力されていません。")
    end

    it "is invalid without a area_id" do
      product = build(:product, area_id: nil)
      product.valid?
      expect(product.errors[:area_id]).to include("が入力されていません。")
    end

    it "is invalid without a delivery_days" do
      product = build(:product, delivery_days: nil)
      product.valid?
      expect(product.errors[:delivery_days]).to include("が入力されていません。")
    end

    it "is invalid without a user_id" do
      product = build(:product, user_id: nil)
      product.valid?
      expect(product.errors[:user_id]).to include("が入力されていません。")
    end

    it "is invalid without a burden" do
      product = build(:product, burden: nil)
      product.valid?
      expect(product.errors[:burden]).to include("が入力されていません。")
    end

    it "is invalid without a way" do
      product = build(:product, way: nil)
      product.valid?
      expect(product.errors[:way]).to include("が入力されていません。")
    end

    it "is invalid without a size" do
      product = build(:product, size: nil)
      product.valid?
      expect(product.errors[:size]).to include("が入力されていません。")
    end

    it "is invalid without a price" do
      product = build(:product, price: nil)
      product.valid?
      expect(product.errors[:price]).to include("が入力されていません。")
    end

    it "is invalid without a brand" do
      product = build(:product, brand: nil)
      product.valid?
      expect(product.errors[:brand]).to include("が入力されていません。")
    end

  end
end