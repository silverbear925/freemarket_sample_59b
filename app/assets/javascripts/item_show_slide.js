$(function() {



  $(".owl-dot").hover(function() {
      var this_index = ($(this).index())
      var hogeWidth = ( this_index* -300 ) + "px"
      $('.owl-stage').animate({marginLeft:hogeWidth})
    })
});