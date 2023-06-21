class HighwaysController < ApplicationController
  def index
    @start_place = session[:start_place]
    @arrive_place = session[:arrive_place]
    @highway_cost = session[:highway_cost]
  end

  def create
    #パラメータをセッションに保存
    session[:start_place] = params[:start_place]
    session[:arrive_place] = params[:arrive_place]

    #フォームの内容をURLに埋め込み
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
    redirect_to "https://www.driveplaza.com/dp/SearchQuick?startPlaceKana=#{start_place}&arrivePlaceKana=#{arrive_place}&searchHour=#{hour}&searchMinute=#{min}&kind=#{kind}&carType=#{car_type}&priority=2&keiyuPlaceKana=&keiyuPlaceKana2=&keiyuPlaceKana3=&searchYear=#{year}&searchMonth=#{month}&searchDay=#{day}&selectickindflg=0", allow_other_host: true, target: "_blank"
  end

  def save_highway_info

    session[:highway_cost] = params[:highway_cost].to_i.presence || 0
    @start_place = session[:start_place]
    @arrive_place = session[:arrive_place]
    @highway_cost = session[:highway_cost]
    redirect_to extras_path
  end

  def highway; end

  
end
