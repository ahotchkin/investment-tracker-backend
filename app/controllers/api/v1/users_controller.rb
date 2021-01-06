class Api::V1::UsersController < ApplicationController

  def index
    users = User.all

    render json: UserSerializer.new(users).serialized_json, status: 200
  end

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      render json: UserSerializer.new(user).serialized_json, status: 200
    else
      resp = {
        :error => user.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :password, :email, :income)
    end

end
