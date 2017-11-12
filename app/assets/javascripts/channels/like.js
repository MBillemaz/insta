App.like = App.cable.subscriptions.create("LikeChannel", {
    connected() {},
      // Called when the subscription is ready for use on the server
   
    disconnected() {},
      // Called when the subscription has been terminated by the server
   
    received(data) {
      // Called when there's incoming data on the websocket for this channel
      console.log(data.message);
      var nb_like = parseInt($('*[data-nbr="'+ data.message.image_id +'"]').text());
      if (data.message.like){
        $('*[data-nbr="'+ data.message.image_id +'"]').text(nb_like + 1);
      }
      else {
        $('*[data-nbr="'+ data.message.image_id +'"]').text(nb_like - 1);
      }
    },
   
    speak(image_id, like) {
      return this.perform('like', {image_id, like});
    }
  });