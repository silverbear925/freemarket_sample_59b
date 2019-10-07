class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :products
  has_one :adress
  # has_one :adress
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

validates :nickname, presence: true
validates :email, presence: true
validates :password,presence: true,length: { minimum: 8, maximum: 200 }
validates :family_name, presence: true
validates :first_name, presence: true
validates :family_name_kana, presence: true,format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}
validates :first_name_kana, presence: true,format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}
validates :birth_day, presence: true
end
