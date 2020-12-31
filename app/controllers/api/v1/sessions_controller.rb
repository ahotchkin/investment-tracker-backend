class Api::V1::SessionsController < ApplicationController

  def create
    user = User.find_by(:username => params[:session][:username])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      render json: user
    else
      render json: {
        error: "Invalid Credentials"
      }
    end
  end

  # def create
  #   @user = User.find_by(:username => params[:session][:username])
  #
  #   if @user && @user.authenticate(params[:session][:password])
  #     session[:user_id] = @user.id
  #     render json: UserSerializer.new(@user), status: 200
  #   else
  #     render json: {
  #       error: "Username or Password is incorrect."
  #     }
  #   end
  # end


  def get_current_user
  end

  def destroy
  end

end
