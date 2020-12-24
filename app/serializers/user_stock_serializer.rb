class UserStockSerializer
  include FastJsonapi::ObjectSerializer
  attributes :purchase_date, :number_of_shares, :total_spent

  belongs_to :user
  belongs_to :stock
end
