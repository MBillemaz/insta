class HomepageController < ApplicationController

  def index
    @images = Image.filter(params).limit(5).order('id asc')

    respond_to do |format|
      format.html
      format.json { render :json => @listings.to_json }
    end
  end

  def show
    @images = Image.filter(params)
  end

end
