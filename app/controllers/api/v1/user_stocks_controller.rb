class Api::V1::UserStocksController < ApplicationController

  def index
    user_stocks = UserStock.all
    
    render json: UserStockSerializer.new(user_stocks), status: 200
  end

end
