$(function(){
  let index = 0
    $(function(){
      $('.sell__image-select').on('change','.file_form',function(){
          var file = $(this).prop('files')[0];
          var fileReader = new FileReader();

          fileReader.onloadend = function() {
            $('.sell__image-output').append(`<div class="image-wrapper"><img data_index=${index} class="output" src="${fileReader.result}"><div class="image_remove" data_index=${index}>削除</div></div>`);
            append_html()
          }

          fileReader.readAsDataURL(file);
          var append_html =function(){
          index ++
          $('.sell__image-select').append(`<label data_index=${index} class="label" for="product_images_attributes_${index}_src">
                                            <input class="file_form" type="file" name="product[images_attributes][${index}][src]" id="product_images_attributes_${index}_src">
                                           </label>`)
          }
      });
      $('.sell__image-output').on("click",'.image_remove',function(){
        console.log('dada')
        $(this).parent().remove()
        var remove_index = $(this).attr("data_index")
        console.log(remove_index)
        var label =$('.label')
        $(`label[data_index=${remove_index}]`).remove()
      })
    });
})
