class HomepageController < ApplicationController

  def index
    @current_user = current_user
    @images = Image.filter(params);

    render partial: "homepage/image" if request.xhr?
  end

end
