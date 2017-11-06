class HomepageController < ApplicationController

  def index
    @images = Image.search(params)

    respond_to do |format|
      format.html
      format.json { render :json => @images.to_json }
    end
  end

end
