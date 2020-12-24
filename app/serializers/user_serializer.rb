class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :username, :email, :income
end
