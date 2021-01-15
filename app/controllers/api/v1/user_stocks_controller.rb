class Api::V1::UserStocksController < ApplicationController

  def index
    user_stocks = UserStock.all

    render json: UserStockSerializer.new(user_stocks), status: 200
  end

  def new
    user_stock = UserStock.create(params)
  end

  private

    def user_stock_params
      params.require(:user_stock).permit(:purchase_date, :number_of_shares, :total_spent, :user_id, :stock_id)
    end

end
