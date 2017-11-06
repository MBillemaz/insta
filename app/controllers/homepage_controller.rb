class HomepageController < ApplicationController

  def index
      @current_user = current_user
      
    @images = Image.all


    respond_to do |format|
      format.html
      format.json { render :json => @listings.to_json }
    end
  end

  def show
    @images = Image.filter(params)
  end

end
