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




                                 


                            
                                                      

                       

                          