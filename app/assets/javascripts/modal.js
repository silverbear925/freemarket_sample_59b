$(function() {

$(".item-buy-btn").click(function(){
  $(".modal").fadeIn();

})



$(document).on("click",".cancel_box",function(){
  console.log("huhu")
  $(".modal").fadeOut();

})
})
