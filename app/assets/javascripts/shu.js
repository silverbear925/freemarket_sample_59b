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

    $(".fa-angle-right").eq(angle_link).css("color", "#333");
      
  }, function(){
    var angle_link = $(this).index()
    
    $(".fa-angle-right").eq(angle_link).css("color", "");
  })
});