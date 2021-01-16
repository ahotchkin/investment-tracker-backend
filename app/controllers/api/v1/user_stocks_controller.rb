class Api::V1::UserStocksController < ApplicationController

  def index
    if logged_in?
      user_stocks = current_user.user_stocks

      render json: UserStockSerializer.new(user_stocks), status: 200
    else
      render json: {
        error: "You must be logged in to see your stocks"
      }
    end
  end

  def create
    user_stock = UserStock.new(user_stock_params)

    if user_stock.save
      render json: UserStockSerializer.new(user_stock), status: 200
    else
      resp = {
        :error => user.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end


  private

    def user_stock_params
      params.require(:user_stock).permit(:purchase_date, :number_of_shares, :total_spent, :user_id, :stock_id)
    end

end
