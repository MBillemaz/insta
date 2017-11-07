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
              $(that).parent().parent().attr('data-nbr').text(data.number)
              //$("imageNb-"+$(that).data('id')).text(data.number);
            }
          });
    })
})
