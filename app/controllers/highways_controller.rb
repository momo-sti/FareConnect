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

  def save_cost
    @cost = params[:cost]
    if @cost.match?(/\A[0-9]+\z/)
      # costが整数の場合、セッションに保存
      session[:cost] = @cost
      flash.now[:success] = "料金を登録しました"
      render :highway
    else
      # costが整数でない場合、エラーメッセージを返す
      flash.now[:danger] = '半角数字を入力して下さい'
      render :highway
    end
  end

  def highway
    @cost = session[:cost]
  end

  def reset_cost
    session[:cost] = nil
    redirect_to highway_highways_path
  end
  
end
