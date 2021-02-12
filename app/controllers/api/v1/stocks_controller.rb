class Api::V1::StocksController < ApplicationController

  def index
    stocks = Stock.all
    render json: StockSerializer.new(stocks), status: 200
  end

  def create
  end

  private

    def stock_params
      params.require(:stock).permit(:name, :symbol, :industry, :sector)
    end

end
