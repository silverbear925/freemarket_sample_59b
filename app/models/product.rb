class Product < ApplicationRecord
  validates :name, :text, :status,:delivery_days,:burden,:way,:price, presence: true
  has_many :images
  accepts_nested_attributes_for :images
  belongs_to :area
  belongs_to :category
  belongs_to :user
  # mount_uploaders :images, ImageUploader
  enum status:{新品:0,未使用に近い:1,目立った傷や汚れなし:2,やや傷や汚れあり:3,傷や汚れあり: 4,汚れあり: 5}
  # enum status:["新品","未使用に近い","目立った傷や汚れなし","やや傷や汚れあり","傷や汚れあり","汚れあり"]
  enum burden:{"送料込み": 0,"着払い": 1}

  enum delivery_days:{"1~2日で発送": 0,"2~3日で発送": 1,"4~7日で発送": 3}
  enum way:{"未定": 0,"らくらくメルカリ便": 1,"ゆうメール": 3,"レターパック": 4,"普通郵便（定型、定型外": 5,"クロネコヤマト": 6,"ゆうパック": 7,"クリックポスト": 8,"ゆうパケット": 9}

  

end
