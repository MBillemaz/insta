class UploadController < ApplicationController
        before_action :authenticate_user!
      def new
        @image = Image.new
      end

      def create
        @image = Image.new(image_params)
        if @image.save
          redirect_to root_path
        else
          render template: '/upload/new'
        end
      end

      private
      def image_params
        params.require(:image)
              .permit(
                :category_id,
                :picture,
                tag_ids: []
              ).merge(user_id: current_user.id)
      end
end
