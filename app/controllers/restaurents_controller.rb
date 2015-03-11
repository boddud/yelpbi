class RestaurentsController < ApplicationController
  def index
    restaurents = Restaurants.getRestaurents
    respond_to do |format|
      format.json {render json: restaurents }
    end
  end
end
