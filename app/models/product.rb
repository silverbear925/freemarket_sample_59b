class Product < ApplicationRecord
  has_many :images
  accepts_nested_attributes_for :images
  belongs_to :area
  belongs_to :brand, optional: true
  has_many :product_category
  has_many :categories, through: :product_category
  # mount_uploaders :images, ImageUploader
  enum statuses:{　new: 0, clocsetonew: 1, noscratches: 2, slightlynoscratches: 3, scratches: 4, bad: 5 }
  enum burden_status:{ postageincluded: 0, cashondelivery: 1 }
  enum delivery_days_status:{ days1: 0, days2: 1, day4: 3 }
  enum way_status:{ undecided: 0, rakuraku: 1, mail: 3, letterpack: 4, post:5, kuroneko: 6, yupack: 7, clickpost: 8, yupacket: 9  }




end
