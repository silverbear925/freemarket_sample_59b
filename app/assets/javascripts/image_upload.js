$(function(){
//   $('.file_form').change(function(){
//     console.log('dada')
//     var file = $(this).prop('files');
//     console.log(file)
//     var fileReader = new FileReader();
//         fileReader.onloadend = function() {
//             $('.sell__image-select').html('<img src="' + fileReader.result + '"/>');
//         }
//         fileReader.readAsDataURL(file);
//   })
    $(function(){
      $('.file_form').change(function(){
        console.log('DADA')
          $('img').remove();
          var file = $(this).prop('files')[0];
          console.log(file)
          var fileReader = new FileReader();
          fileReader.onloadend = function() {
              $('.sell__image-select-area').html('<img  class=""src="' + fileReader.result + '"/>');
          }
          fileReader.readAsDataURL(file);
      });
    });
})
