class Api::V1::SessionsController < ApplicationController

  # skip_before_action :verify_authenticity_token

  def auth_check
    cookies["logged_in"] = logged_in? 
    render json: {csrf_auth_token: form_authenticity_token}
  end
  
  def create
    @user = User.find_by(username: params[:user][:username])
    # byebug
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            cookies["logged_in"] = true 
            render json: @user, status: 200
        else
            render json: { errors: @user.errors.full_messages }, status: 400
        end
  end

  def destroy
     @session.delete(:user_id)
     cookies["logged_in"] = false 
     render json: {status: 200}
  end
end
