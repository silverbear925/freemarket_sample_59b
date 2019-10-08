FactoryBot.define do

  factory :product do
    id            {"1"}
    name          {"hey"}
    category_id   {"1"}
    text          {"aaaaaaaaaaaaaaaaaaaaaaaa"}
    status        {"新品"}
    area_id       {"1"}
    delivery_days {"１~２日で発送"}
    user_id       {"1"}
    burden        {"送料込み"}
    way           {"未定"}
    size          {"1"}
    price         {"5000"}
    brand         {"nike"}
  end

end