class GasolinesController < ApplicationController
  def index; end

  def save_gasoline_info
    session[:gasoline_cost] = params[:gasoline_cost]
    session[:total_distance] = params[:total_distance]
    session[:fuel_efficiency] = params[:fuel_efficiency]
    session[:price_per_liter] = params[:price_per_liter]
    head :ok
  end
end
