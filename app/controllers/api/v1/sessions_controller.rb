class Api::V1::SessionsController < ApplicationController

  def auth_check
    # logged_in?
    render json: {csrf_auth_token: form_authenticity_token}
  end
  
  def create
    @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            log_in(@user)
            render json: @user, status: 200
        else
            render json: { errors: @user.errors.full_messages }, status: 400
        end
  end

  def destroy
     @session.delete(:user_id)
     render json: {status: 200}
  end
end
