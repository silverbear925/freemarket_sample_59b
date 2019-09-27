$(function() {

  $(".nav-mypage__list-item").hover(function() {
    // カーソルが当たった時の処理
    $(this).css("background-color", "#fcfcfc");
    
  }, function() {

    // カーソルが離れた時の処理
    $(this).css("background-color", "#fff");

  });

  $(".nav-mypage__list-link").hover(function(){
    
    var angle_link = $(this).index()

    $(".fa-angle-right").eq(angle_link).addClass(".side-nav-hover");
      console.log(angle_link)
  }, function(){
    var angle_link = $(this).index()
    
    $(".fa-angle-right").eq(angle_link).removeClass(".side-nav-hover");
  })
});