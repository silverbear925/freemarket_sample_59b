class Product < ApplicationRecord
  validates :name, :text, :status,:delivery_days,:burden,:way,:price, presence: true
  has_many :images,dependent: :destroy
  accepts_nested_attributes_for :images
  belongs_to :area
  belongs_to :category
  belongs_to :user
  # mount_uploaders :images, ImageUploader
  enum status:{"新品":0,"未使用に近い":1,"目立った傷や汚れなし":2,"やや傷や汚れあり":3,"傷や汚れあり": 4,"汚れあり": 5}
  enum burden:{"送料込み": 0,"着払い": 1}
  enum delivery_days:{"１~２日で発送": 0,"2~3日で発送": 1,"4~7日で発送": 2}
  enum way:{"未定": 0,"らくらくメルカリ便": 1,"ゆうメール": 2,"レターパック": 3,"普通郵便（定型、定型外": 4,"クロネコヤマト": 5,"ゆうパック": 6,"クリックポスト": 7,"ゆうパケット": 8}


end
