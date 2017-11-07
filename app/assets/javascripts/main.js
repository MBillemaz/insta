$(document).on('turbolinks:load', function() {
    $(document).on('click'," [data-do='like']",function (e) {
        e.preventDefault();
        var that = this;
        $.ajax({
            type:'POST',
            url:'/like',
            data: { 
                image_id: $(that).data('id')
            },
            success:function(data){
                console.log(data);
              if(data.klass == "active"){
                  $(that).addClass(data.klass);
              }
              else{
                  $(that).removeClass("active");
              }
              $('*[data-nbr="'+ data.image_id +'"]').text(data.number);
            }
          });
    })

    $(document).on('click'," [data-do='like']",function (e) {
        e.preventDefault();
        var that = this;
    })
})
