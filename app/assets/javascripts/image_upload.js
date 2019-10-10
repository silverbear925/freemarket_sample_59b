$(function(){
  let index =$('.output').length

  $(function(){
      $('.sell__image-select').on('change','.file_form',function(){
          var file = $(this).prop('files')[0];
          var fileReader = new FileReader();

          fileReader.onloadend = function() {
            $('.sell__image-output').append(`<div class="image-wrapper"><img data-index=${index} class="output" src="${fileReader.result}"><div class="image_remove" data-index=${index}>削除</div></div>`);
            append_html()
          }

          fileReader.readAsDataURL(file);
          var append_html =function(){
          index ++
          console.log(index)

          $('.sell__image-select').append(`<label data-index=${index} class="label" for="product_images_attributes_${index}_src">
                                            <input class="file_form" type="file" name="product[images_attributes][${index}][src]" id="product_images_attributes_${index}_src">
                                           </label>`)
                                           
          }
      });

      $('.sell__image-output').on("click",'.image_remove',function(){        
        var remove_index = $(this).attr("data-index")
        console.log(remove_index)
        $(`.image_destroy[for = product_images_attributes_${remove_index}__destroy]`).click()
        $(this).parent().remove()
        var label =$('.label')
        $(`label[data-index=${remove_index}]`).remove()
      })
      $('span').click(function(){
        $(`.image_destroy[for = product_images_attributes_${remove_index}__destroy]`).click()
      })
    });
})


