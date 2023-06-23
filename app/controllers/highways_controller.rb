class HighwaysController < ApplicationController
  def index
    @start_place = session[:start_place]
    @arrive_place = session[:arrive_place]
    @car_type = session[:car_type]
    @year = session[:year]
    @month = session[:month]
    @day = session[:day]
    @hour = session[:hour]
    @min = session[:min]
    @kind = session[:kind]
    @highway_cost = session[:highway_cost]
  end

  def create
    redirect_to "/500.html"
  end

  def save_highway_info
    #セッションに値を保存
    session[:highway_cost] = params[:highway_cost].to_i.presence || 0
    @start_place = session[:start_place]
    @arrive_place = session[:arrive_place]
    @highway_cost = session[:highway_cost]
    redirect_to extras_path
  end

  def highway; end

  def reset_and_redirect
    session[:start_place] = nil
    session[:arrive_place] = nil
    session[:car_type] = nil
    session[:year] = nil
    session[:month] = nil
    session[:day] = nil
    session[:hour] = nil
    session[:min] = nil
    session[:kind] = nil

    redirect_to highway_highways_path
  end

  
end
