class HighwaysController < ApplicationController
  def index
  end

  def create
    start_place = CGI.escape(params[:start_place])
    arrive_place = CGI.escape(params[:arrive_place])
    car_type = params[:car_type]
    date = params[:date]
    year, month, day = date.split("-")
    #time(？i) = time_selectのパラメータ形式
    hour = params["time(4i)"]
    min = params["time(5i)"]
    kind = params[:kind]

    #ドラぷらサイトに遷移
    redirect_to "https://www.driveplaza.com/dp/SearchQuick?startPlaceKana=#{start_place}&arrivePlaceKana=#{arrive_place}&searchHour=#{hour}&searchMinute=#{min}&kind=#{kind}&keiyuPlaceKana=&keiyuPlaceKana2=&keiyuPlaceKana3=&searchYear=#{year}&searchMonth=#{month}&searchDay=#{day}&roadType1=off&roadType2=off&roadType=15&carType=1&priority=2&selectickindflg=0", allow_other_host: true
  end

  def save_highway_info
    session[:start_place] = params[:start_place]
    session[:arrive_place] = params[:arrive_place]
    session[:highway_cost] = params[:highway_cost]
    head :ok
  end

  def highway
    @cost = session[:highway_cost]
  end

  
end
