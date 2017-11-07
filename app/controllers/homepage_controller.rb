class HomepageController < ApplicationController

  def index

    @current_user = current_user
    @page = 1
    @images = Image.limit(6);

    respond_to do |format|
      format.html
      format.json { render :json => @listings.to_json }
    end
  end

  def show
    @images = Image.filter(params)
    render :index
  end

  def more
    data = current_user.toggleLike(params[:image_id])
    render json: data.to_json
  end

end
