class StockSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :symbol, :industry, :sector
end
