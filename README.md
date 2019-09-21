# README
# DB設計

## productsテーブル
|Column|Type|Options|
|image|string|null:false
|name|string|null:false
|text|text|null:false
|category|references|null:false,foreigner_key:true
|status|string|null:false
|delivery_price|string|null:false
|area|references|null:false,foreigner_key:true
|delivery_days|string|null:false
|brand|references|null:false,foreigner_key:true
###Association
- has_many :categoies
- belongs_to :area
- belongs_to :brand

## products_categories
|Column|Type|Options|
|product|references|null:false,foreigner_key:true|
|category|references|null:false,foreigner_key:true|
###Association
- belongs_to :product
- belongs_to :category


## categoriesテーブル
|Column|Type|Options|
|name|references|null:false,foreigner_key:true|

#3 usersテーブル
|Column|Type|Options|
|nickname|string|null: false
|email|string|null: false
|password|string|null: false
|family_name|string|null: false
|first_name|string|null: false
|family_name_kana|string|null: false
|first_name_kana|string|null: false
|birth_day|deta|
|phone_number
|zipcode
|prefectures
|city
|adress
|building

