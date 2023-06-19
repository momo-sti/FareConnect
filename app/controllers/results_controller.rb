class ResultsController < ApplicationController
  def index
    # セッションから各値を取得
    @total_distance = session[:total_distance]
    @fuel_efficiency = session[:fuel_efficiency]
    @price_per_liter = session[:price_per_liter]
    @result = session[:result]
    @start_place = session[:start_place]
    @arrive_place = session[:arrive_place]
    @highway_cost = session[:highway_cost]
  end
  
end
