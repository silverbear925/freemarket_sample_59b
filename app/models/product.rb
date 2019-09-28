class Product < ApplicationRecord
  has_many :images
  accepts_nested_attributes_for :images
  belongs_to :area
  belongs_to :bland
  has_many :product_category
  has_many :categories, through: :product_category
  # mount_uploaders :images, ImageUploader
end
