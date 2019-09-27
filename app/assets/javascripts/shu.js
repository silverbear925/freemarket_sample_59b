$(function() {

  $(".nav-mypage__list-item").hover(function() {
    $(this).css("background-color", "#fcfcfc");
    
  }, function() {
    $(this).css("background-color", "#fff");

  });


  $(".nav-mypage__list-link").hover(function(){  
    var angle_link = $(this).index()
    $(".fa-angle-right").eq(angle_link).css("color", "#333");

  }, function(){
    var angle_link = $(this).index()  
    $(".fa-angle-right").eq(angle_link).css("color", "");
  })


  $(".nav-mypage__list-link").hover(function(){ 
    var angle_link = $(this).index()
    $(".fa-angle-right").eq(angle_link).css({"transform": "translate(5px, -10px)"});

  }, function(){
    var angle_link = $(this).index()    
    $(".fa-angle-right").eq(angle_link).css({"transform": "translate(0, -10px)"});
  })
});