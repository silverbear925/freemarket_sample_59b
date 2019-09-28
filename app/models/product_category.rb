class ProductCategory < ApplicationRecord
  blongs_to :product
  blongs_to :category
end
