class CalculationsController < ApplicationController
  def datasave
    #Google Mapsから取得したデータをセッションに格納
    session[:distance] = params[:distance]
    session[:duration] = params[:duration]
    session[:start_point] = params[:start_point]
    session[:end_point] = params[:end_point]
    head :ok
  end

  def calculate
    #セッションからデータを取得し、ビューに渡す
    @distance = session[:distance]
    @duration = session[:duration]
    @start_point = session[:start_point]
    @end_point = session[:end_point]
  end
  def index
    #セッションからデータを取得し、ビューに渡す
    @distance = session[:distance]
    @duration = session[:duration]
    @start_point = session[:start_point]
    @end_point = session[:end_point]
  end
end
