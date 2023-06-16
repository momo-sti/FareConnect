class ResultsController < ApplicationController
  def index
  end

  def get_gasoline_info
    # セッションから各値を取得
    total_distance = session[:total_distance]
    fuel_efficiency = session[:fuel_efficiency]
    price_per_liter = session[:price_per_liter]
    cost = session[:gasoline_cost]
  
    # JSON形式で値を返す
    render json: {
      total_distance: total_distance,
      fuel_efficiency: fuel_efficiency,
      price_per_liter: price_per_liter,
      cost: cost
    }
  end
end
