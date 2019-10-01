$(function(){
    $('#burden').change(function(){
      $('#way').slideDown()
    })
    
    $('#parents').change(function(){
      console.log($('#parents').val())
      $('#children').slideDown()
      var parent_id = $('#parents').val()
    })

    // $.ajax({
    //   url: "",
    //   type: "post",
    //   data: parent_id,
    //   dataType: 'json',
    // })
    // .done(function(children){
    
    // })




    
    


});