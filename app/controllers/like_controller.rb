class LikeController < ApplicationController
    
      def like
        data = current_user.toggleLike(params[:image_id])
        render json: data.to_json
      end


    
end
    