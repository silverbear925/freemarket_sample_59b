$(function(){

  $("li.notice-todo").on('click', function(){
    $("li.notice-todo").toggleClass("action");
    $("ul.mypage-main__tab-content__list").toggleClass("active");
    $
  })

  $("li.transaction").on('click', function(){
    $("li.transaction").toggleClass("action");
    $("ul.mypage-main__list-nowwas").toggleClass("active");
    $
  })

  $(".mypage-main__tab-content__list-item").hover(function() {
    $(this).css("background-color", "#fcfcfc");
    
  }, function() {
    $(this).css("background-color", "");
  });

  $(".mypage-main__tab-content__list-go__link").hover(function() {
    $(this).css("background-color", "rgb(248, 248, 248)");
    
  }, function() {
    $(this).css("background-color", "");
  });

  $(".notice-todo").hover(function(){  
    var mytab = $(this).children('.tab-notice-todo')
    mytab.css("color", "rgb(102, 101, 101)");
  
  }, function(){ 
    var mytab = $(this).children('.tab-notice-todo')
    mytab.css("color", "");
    })

    $(".transaction").hover(function(){  
      var mytabs = $(this).children('.tab-nowwas')
      mytabs.css("color", "rgb(102, 101, 101)");
    
    }, function(){ 
      var mytabs = $(this).children('.tab-nowwas')
      mytabs.css("color", "");
    })
})