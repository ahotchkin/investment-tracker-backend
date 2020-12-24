class Api::V1::StocksController < ApplicationController

  def index
    stocks = Stock.all
    render json: StockSerializer.new(stocks), status: 200
  end

end
