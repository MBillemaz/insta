class HomepageController < ApplicationController

  def index
    @current_user = current_user
    @images = Image.filter(params);

    render partial: "homepage/image" if request.xhr?
  end

  def show
    @image = Image.find(params[:image_id])
  end



end
