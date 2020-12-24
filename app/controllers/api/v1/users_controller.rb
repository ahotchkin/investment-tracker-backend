class Api::V1::UsersController < ApplicationController

  def index
    users = User.all

    render json: UserSerializer.new(users).serialized_json, status: 200
  end

end
