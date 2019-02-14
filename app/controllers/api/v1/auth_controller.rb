require 'jwt'

class Api::V1::AuthController < ApplicationController

  def create
    # byebug
    @user = User.find_by(username: login_user_params[:username])
    # byebug
    if @user && @user.authenticate(login_user_params[:password])
      token = issue_token({user_id: @user.id})
      render json: {user: @user, jwt: token}
    else
      render json: {error: "noUser"}, status: 400
    end
  end

  def show
    # byebug
    if current_user
      render json: {user: current_user}
    else
      render json: {error: "some error"}, status: 422
    end
  end

  private

 def login_user_params
   params.require(:user).permit(:username, :password)
 end


end
