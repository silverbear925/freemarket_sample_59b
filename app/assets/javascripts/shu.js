$(function() {

  $(".nav-mypage__list-item").hover(function() {
    $(this).css("background-color", "#fcfcfc");
    
  }, function() {
    $(this).css("background-color", "#fff");
  });

$(".nav-mypage__list-item").hover(function(){  
  var bigman = $(this).children('.fas')
  bigman.css("color", "#333")

}, function(){
  var bigman = $(this).children('.fas')
  bigman.css("color", "")
  })

$(".nav-mypage__list-item").hover(function(){  
  var bigman = $(this).children('.fas')
  bigman.css({"transform": "translate(5px, -10px)"});

}, function(){ 
  var bigman = $(this).children('.fas')
  bigman.css({"transform": "translate(0, -10px)"});
  })
});

