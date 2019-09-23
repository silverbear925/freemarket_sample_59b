# README
# DB設計

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null:false|
|name|string|null:false|
|text|text|null:false|
|category|references|null:false,foreigner_key:true|
|status|string|null:false|
|delivery_price|string|null:false|
|area|references|null:false,foreigner_key:true|
|delivery_days|string|null:false|
|brand|references|foreigner_key:true|
|user|references|null:false,foreigner_key:true|
|buy_user|integer|
|sale|string|

### Association
- has_many :categoies
- belongs_to :area
- belongs_to :brand
- belongs_to :user
- has_many :images
- has_many :categories, through: :products_categories

## products_categories テーブル
|Column|Type|Options|
|------|----|-------|
|product|references|null:false,foreigner_key:true|
|category|references|null:false,foreigner_key:true|
### Association
- belongs_to :product
- belongs_to :category

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
### Association
- has_many :products
- has_many :products, through: :products_categories

## majorsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|

## middles テーブル
|Column|Type|Options|
|------|----|-------|
|category|references|null:false,foreigner_key:true|
|major|references|null:false,foreigner_key:true|
|name|string|null:false|
### Association
- belongs_to :major
- belongs_to :category

## likes テーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null:false,foreigner_key:true|
|late|string|null:false,foreigner_key:true|

### Association
- belongs_to :user

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|product|references|null:false,foreigner_key:true|
|url|string|null:false,foreigner_key:true|

### Association
- belongs_to :product

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birth_day|date|string|null: false|
|phone_number|integer|null: false|
|zipcode|string|null: false|
|prefectures|string|null: false|
|city|string|null: false|
|adress|string|null: false|
|building|string|null: false|
|evaluation|string|null: false|

### Association
- has_many :products
- has_many :comments
- has_many :likes

## comments テーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null:false,foreigner_key:true|
|text|string|
### Association
- belongs_to :user

## credits テーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null:false,foreigner_key:true|
|number|integer|null:false|
|expiration_date|date|null:false|
|security_code|integer|null:false|

### Association
- belongs_to :user

## area テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|

### Association
- has_many :products

## brand テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|

### Association
- has_many :products
