FactoryBot.define do
  factory :product do
    name              {"思い出のハチマキ"}
    text              {"今日はお日柄もよく、絶好の運動会となりました。この商品は高いけど、私の青春が詰まった商品です。だから買って下さい。買いましょう。"}
    category_id       {1}
    status            {1}
    area_id           {1}
    delivery_days     {1}
    user_id           {1} 
    burden            {1}
    way               {1}
    size              {"l"}
    price             {100}
    brand             {"nike"}
  end
end