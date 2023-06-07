class TopsController < ApplicationController
  def new
    @top = Top.new
    gon.top = @top
  end

  def distance
    @distance = params[:distance]
    @duration = params[:duration]
  end

  def route
    @route = params[:route]
  end

  private

  def top_params
    params.require(:top).permit(:address, :latitude, :longitude)
  end
end
