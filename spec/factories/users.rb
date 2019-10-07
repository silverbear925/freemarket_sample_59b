FactoryBot.define do
  factory :user do
    password = Faker::Internet.password(8)
    nickname { Faker::Name.last_name }
    email { Faker::Internet.free_email }
    family_name           {"田中"}
    first_name            {"太郎"}
    family_name_kana      {"タナカ"}
    first_name_kana       {"タロウ"}
    birth_day             {"2014-10-06"}
    password              { password }
    password_confirmation { password }
  end
end