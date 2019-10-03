crumb :root do
  link "メルカリ", root_path
end

crumb :mypage do
  link "マイページ", user_path(current_user)
  parent :root
end

crumb :profile do
  link "プロフィール", users_path
  parent :mypage
end

crumb :pay do
  link "支払い方法", purchase_path
  parent :mypage
end

crumb :logout do
  link "ログアウト", users_path
  parent :mypage
end