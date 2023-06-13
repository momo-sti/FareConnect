class HighwaysController < ApplicationController
  def highway
  end

  def create
    start_place = CGI.escape(params[:start_place])
    arrive_place = CGI.escape(params[:arrive_place])
    car_type = CGI.escape(params[:car_type])

    redirect_to "https://www.driveplaza.com/dp/SearchQuick?startArrive=true&startPlaceKana=#{start_place}&arrivePlaceKana=#{arrive_place}&carType=#{car_type}", allow_other_host: true
  end
end
