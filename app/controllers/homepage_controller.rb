class HomepageController < ApplicationController

  def index
  end

  def show
    @images = Image.filter(params)
  end

end
