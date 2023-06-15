class GasolinesController < ApplicationController
  def index; end

  def save_gasoline_cost
    session[:gasoline_cost] = params[:gasoline_cost]
    render json: { status: 'SUCCESS', message: 'ガソリン代を保存しました' }
  end
end
