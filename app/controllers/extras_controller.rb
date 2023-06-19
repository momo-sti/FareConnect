class ExtrasController < ApplicationController
  before_action :set_extra, only: [:edit, :update, :destroy]

  def index
    @start_place = session[:start_place]
    @arrive_place = session[:arrive_place]
    @highway_cost = session[:highway_cost]
    @extras = session[:extras] || []
  end

  def new
    @extra = Extra.new
  end

  def create
    @extra = Extra.new(extra_params)
    if @extra.valid?
      extras = session[:extras] || []
      extras << { category: @extra.category, amount: @extra.amount }
      session[:extras] = extras
      redirect_to extras_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @extra.valid?
      session[:extras][params[:id].to_i] = @extra
      redirect_to extras_path
    else
      render :edit
    end
  end

  def destroy
    session[:extras].delete_at(params[:id].to_i)
    redirect_to extras_path
  end

  private

  def set_extra
    @extra = Extra.new(session[:extras][params[:id].to_i])
  end

  def extra_params
    params.require(:extra).permit(:category, :amount)
  end
end
