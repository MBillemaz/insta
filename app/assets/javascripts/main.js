window.last = null; 
$(document).on('turbolinks:load', function() { 
    
    $("body").on('click'," [data-do='like']",function (e) {
        e.preventDefault();
        var that = this;
        var like;
        $.ajax({
            type:'POST',
            url:'/like',
            data: { 
                image_id: $(that).data('id')
            },
            success:function(data){
              if(data.klass == "active"){
                  $(that).addClass(data.klass);
                  like = true;
              }
              else{
                  $(that).removeClass("active");
                  like = false;
              }
            //   $('*[data-nbr="'+ data.image_id +'"]').text(data.number);
              App.like.speak($(that).data('id'), like);
            }
          });

        
    })

    $("body").on('click'," [data-do='more']",function (e) {
        e.preventDefault();
        var that = this;
        var ref = $(that).attr('href');
        $.ajax({
            type:"GET",
            url: ref,
            data: {
                last_id: window.last
            },
            success: function(data){
                $(".imagesContainer").append(data);
            },
            error: function(){
                $("[data-do='more']").hide();
            }
        })
    })
})
// $(div).html = data.response