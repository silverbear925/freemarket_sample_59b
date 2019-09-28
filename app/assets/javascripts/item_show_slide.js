$(function() {



  $(".owl-dot").hover(function() {
    
      console.log($(this).index())
      var this_index = ($(this).index())
      console.log(this_index)
      var hogeWidth = ( this_index* -300 ) + "px";
      console.log(hogeWidth)
      $('.owl-stage').animate({marginLeft:hogeWidth})
    })
});