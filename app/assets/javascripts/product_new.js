$(function(){
  $('#product_price').keyup(function(){
    console.log('dadad')
    var price = $('#product_price').val()
    console.log(price)
    var fee = Math.round(price*0.1)
    var profit = Math.round(price*0.9)
    $('.sell__about__right__wrap__fee-right').text(fee)
    $('.sell__about__right__wrap__profit-right').text(profit)
  })
})