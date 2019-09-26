$(function() {

  $(".nav-mypage__list-item").hover(function() {
    // カーソルが当たった時の処理
    $(this).css("background-color", "#333");

  }, function() {

    // カーソルが離れた時の処理
    $(this).css("background-color", "#fff");

  });

  $(".nav-mypage__list-item").hover(function(){

    $(".fa-angle-right").css("background-color", "#333");

  }, function(){

    $(".fa-angle-right").css("background-color", "");
  })
});