App.like = App.cable.subscriptions.create("LikeChannel", {
    connected: function() {},
      // Called when the subscription is ready for use on the server
   
    disconnected: function() {},
      // Called when the subscription has been terminated by the server
   
    received: function(data) {
      // Called when there's incoming data on the websocket for this channel
      var nb_like = parseInt($('*[data-nbr="'+ data.message.image_id +'"]').text());
      if (data.message.like){
        $('*[data-nbr="'+ data.message.image_id +'"]').text(nb_like + 1);
      }
      else {
        $('*[data-nbr="'+ data.message.image_id +'"]').text(nb_like - 1);
      }
    },
   
    speak: function(image_id, like) {
      return this.perform('like', {image_id: image_id, like: like});
    }
  });