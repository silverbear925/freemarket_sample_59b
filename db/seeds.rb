# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


areas = %w(
   北海道
   青森県 
   岩手県 
   宮城県 
   秋田県 
   山形県 
   福島県 
   茨城県 
   栃木県
   群馬県 
   埼玉県 
   千葉県 
   東京都 
   神奈川県 
   新潟県 
   富山県 
   石川県
   福井県
   山梨県
   長野県
   岐阜県
   静岡県
   愛知県
   三重県
   滋賀県
   京都府
   大阪府
   兵庫県
   奈良県
   和歌山県
   鳥取県
   島根県
   岡山県
   広島県
   山口県
   徳島県
   香川県
   愛媛県
   高知県
   福岡県
   佐賀県
   長崎県
   熊本県
   大分県
   宮崎県
   鹿児島県
   沖縄県
)
areas.each do |area|
  Area.find_or_create_by(name: area)
end



#レディースブロック

#レディースの子カテゴリー配列
lady_child_array = %w(
                       トップス
                       ジャケット/アウター                                       
                       )
                       
                       
                       
#レディースの孫カテゴリー配列
lady_grandchild_array = [%w(
                              すべて
                              Tシャツ/カットソー（半袖/袖なし）
                              Tシャツ/カットソー（七分/長袖）
                              シャツ/ブラウス（半袖/袖なし）
                              シャツ/ブラウス（七分/長袖）
                              ポロシャツ
                              キャミソール
                              タンクトップ
                              ホルターネック
                              ニット/セーター
                              チュニック
                              カーディガン/ボレロ
                              アンサンブル
                              ベスト/ジレ
                              パーカー
                              トレーナー/スウェット
                              ベアトップ/チューブトップ
                              ジャージ
                              その他                               
                              ),
                         %w(
                              すべて
                              テーラードジャケット
                              ノーカラージャケット                           
                              Gジャン/デニムジャケット
                              レザージャケット
                              ダウンジャケット
                              ライダースジャケット
                              ミリタリージャケット
                              ダウンベスト
                              ジャンパー/ブルゾン
                              ポンチョ
                              ロングコート
                              トレンチコート
                              ダッフルコート
                              ピーコート
                              チェスターコート
                              モッズコート
                              スタジャン
                              毛皮/ファーコート
                              スプリングコート
                              スカジャン
                              その他                       
                              )]

parent = Category.create(name: 'レディース')
lady_child_array.each.each_with_index do |child, i|
child = parent.children.create(name: child)
lady_grandchild_array[i].each do |grandchild|
  child.children.create(name: grandchild)
end
end

#メンズブロック

#レディースの子カテゴリー配列
mens_child_array = %w(
                      トップス
                      ジャケット/アウター                       
                      )

#レディースの孫カテゴリー配列
mens_grandchild_array = [%w(
                              すべて
                              Tシャツ/カットソー（半袖/袖なし）
                              Tシャツ/カットソー（七分/長袖）
                              シャツ
                              ポロシャツ
                              タンクトップ
                              ニット/セーター
                              パーカー
                              カーディガン
                              スウェット
                              ジャージ
                              ベスト
                              その他
                              ),
                            %w(
                                すべて
                                テーラードジャケット
                                ノーカラージャケット 
                                Gジャン/デニムジャケット 
                                レザージャケット 
                                ダウンジャケット 
                                ライダースジャケット 
                                ミリタリージャケット 
                                ナイロンジャケット 
                                フライトジャケット  
                                ダッフルコート 
                                ピーコート 
                                ステンカラーコート 
                                トレンチコート 
                                モッズコート 
                                チェスターコート 
                                スタジャン 
                                スカジャン 
                                ブルゾン 
                                マウンテンパーカー 
                                ダウンベスト 
                                ポンチョ 
                                カバーオール 
                                その他
                                )]

parent = Category.create(name: 'メンズ')
mens_child_array.each.each_with_index do |child, i|
  child = parent.children.create(name: child)
  mens_grandchild_array[i].each do |grandchild|
    child.children.create(name: grandchild)
  end
end



User.create!(
  [
    {
      id: '1',
      email: 'test@test',
      password: '111111',
      nickname: 'テスト',
      family_name: 'テスト',
      first_name: '太郎',
      family_name_kana: 'テスト',
      first_name_kana: 'タロウ',
      birth_day: '2019-01-01',
      text: '',
    },

    {
      id: '2',
      email: 'mercari@mercari',
      password: '222222',
      nickname: 'メルカリ',
      family_name: 'メルカリ',
      first_name: '次郎',
      family_name_kana: 'メルカリ',
      first_name_kana: 'ジロウ',
      birth_day: '2019-02-02',
      text: '',
    },

    {
      id: '3',
      email: 'tech@tech',
      password: '333333',
      nickname: 'テック',
      family_name: 'テック',
      first_name: '三郎',
      family_name_kana: 'テック',
      first_name_kana: 'サブロウ',
      birth_day: '2019-03-03',
      text: '',
    }
  ]
)


Product.create!(
  [
    {
      id: '1',
      user_id: '1',
      name: 'テスト1',
      text: 'あーーーーーーーーー',
      category_id: '1',
      size: '1',
      status: '新品',
      burden: '送料込み',
      way: '未定',
      area_id: '1',
      delivery_days: '１~２日で発送',
      price: '1111',
    },

    {
      id: '2',
      user_id: '1',
      name: 'テスト2',
      text: 'いーーーーーーーー',
      category_id: '1',
      size: '2',
      status: '未使用に近い',
      burden: '着払い',
      way: 'らくらくメルカリ便',
      area_id: '2',
      delivery_days: '2~3日で発送',
      price: '2222',
    },

    {
      id: '3',
      user_id: '1',
      name: 'テスト3',
      text: 'うーーーーーーーー',
      category_id: '1',
      size: '1',
      status: '目立った傷や汚れなし',
      burden: '着払い',
      way: 'らくらくメルカリ便',
      area_id: '3',
      delivery_days: '4~7日で発送',
      price: '3333',
    },

    {
      id: '4',
      user_id: '1',
      name: 'テスト4',
      text: 'えーーーーーーーー',
      category_id: '1',
      size: '2',
      status: '未使用に近い',
      burden: '送料込み',
      way: 'ゆうメール',
      area_id: '4',
      delivery_days: '4~7日で発送',
      price: '4444',
    },

    {
      id: '5',
      user_id: '1',
      name: 'テスト5',
      text: 'おーーーーーーー',
      category_id: '1',
      size: '1',
      status: 'やや傷や汚れあり',
      burden: '送料込み',
      way: '普通郵便（定型、定型外',
      area_id: '5',
      delivery_days: '2~3日で発送',
      price: '5555',
    }
  ]
)


Adress.create!(
  [
    {
      id: '1',
      zipcode: '111-1111',
      prefectures: '大阪府 ',
      city: '大阪市',
      adress: '111-1',
      building: 'テスト荘 302',
      phone_number: '1111',
      user_id: '1',
    },

    {
      id: '2',
      zipcode: '222-2222',
      prefectures: '東京都',
      city: '新宿区',
      adress: '222-2',
      building: 'メルカリ荘 109',
      phone_number: '2222',
      user_id: '2',
    },

    {
      id: '3',
      zipcode: '333-3333',
      prefectures: '沖縄県',
      city: '那覇市',
      adress: '333-3',
      building: 'テック荘 909',
      phone_number: '3333',
      user_id: '3',
    }
  ]
)


Card.create!(
  [
    {
      id: '1',
      user_id: '1',
      customer_id: '1',
      card_id: '1',
    },

    {
      id: '2',
      user_id: '2',
      customer_id: '2',
      card_id: '2',
    },

    {
      id: '3',
      user_id: '3',
      customer_id: '3',
      card_id: '3',
    }
  ]
)

Image.create!(
  [
    {
      id: '1',
      src: open("https://cdn.pixabay.com/photo/2019/09/19/17/40/insects-4489864__480.jpg"),
      product_id: '1',
    },

    {
      id: '2',
      src: open("https://cdn.pixabay.com/photo/2019/09/19/17/40/insects-4489864__480.jpg"),
      product_id: '2',
    },

    {
      id: '3',
      src: open("https://cdn.pixabay.com/photo/2019/09/19/17/40/insects-4489864__480.jpg"),
      product_id: '3',
    },

    {
      id: '4',
      src: open("https://cdn.pixabay.com/photo/2019/09/19/17/40/insects-4489864__480.jpg"),
      product_id: '4',
    },

    {
      id: '5',
      src: open("https://cdn.pixabay.com/photo/2019/09/19/17/40/insects-4489864__480.jpg"),
      product_id: '5',
    }
  ]
)