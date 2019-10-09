class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :products
  has_one :adress
  has_many :sns_credentials, dependent: :destroy
  # has_one :adress
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[facebook google_oauth2]
validates :nickname, presence: true
validates :email, presence: true
validates :password,presence: true,length: { minimum: 6, maximum: 200 }
validates :family_name, presence: true
validates :first_name, presence: true

validates :family_name_kana, presence: true
validates :first_name_kana, presence: true
validates :birth_day, presence: true 

def self.without_sns_data(auth)
  user = User.find_by(email: auth.info.email)

    if user.present?
      sns = SnsCredential.create(
        uid: auth.uid,
        provider: auth.provider,
        user_id: user.id
      )
    else
      user = User.new(
        nickname: auth.info.name,
        email: auth.info.email,
      )
      sns = SnsCredential.new(
        uid: auth.uid,
        provider: auth.provider
      )
    end
    return { user: user ,sns: sns}
  end

 def self.with_sns_data(auth, snscredential)
  user = User.find_by(id: snscredential.user_id)
  unless user.present?
    user = User.new(
      nickname: auth.info.name,
      email: auth.info.email,
    )
  end
  return {user: user}
 end

 def self.find_oauth(auth)
  uid = auth.uid
  provider = auth.provider
  snscredential = SnsCredential.find_by(uid: uid, provider: provider)
  if snscredential.present?
    user = with_sns_data(auth, snscredential)[:user]
    sns = snscredential
  else
    user = without_sns_data(auth)[:user]
    sns = without_sns_data(auth)[:sns]
  end
  return { user: user ,sns: sns}
end

validates :family_name_kana, presence: true,format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}
validates :first_name_kana, presence: true,format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}

end
