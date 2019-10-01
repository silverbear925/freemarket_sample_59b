class Product < ApplicationRecord
  has_many :images, dependent: :delete_all
  accepts_nested_attributes_for :images
  belongs_to :area
  belongs_to :brand, optional: true
  belongs_to :category 
  belongs_to :user
  # mount_uploaders :images, ImageUploader
  enum statuses:{"新品": 0,"未使用に近い": 1,"目立った傷や汚れなし":2,"やや傷や汚れあり":3,"傷や汚れあり": 4,"汚れあり": 5}
  enum burden_status:{"送料込み": 0,"着払い": 1}
  enum delivery_days_status:{"1~2日で発送": 0,"2~3日で発送": 1,"4~7日で発送": 3}
  enum way_status:{"未定": 0,"らくらくメルカリ便": 1,"ゆうメール": 3,"レターパック": 4,"普通郵便（定型、定型外": 5,"クロネコヤマト": 6,"ゆうパック": 7,"クリックポスト": 8,"ゆうパケット": 9}
  
end
