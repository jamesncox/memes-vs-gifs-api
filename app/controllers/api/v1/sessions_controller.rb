class Api::V1::SessionsController < ApplicationController

  def auth_check
    render json: {csrf_auth_token: form_authenticity_token}
  end
  
  def create
    # byebug
    # something in here isn't sending the errors back correctly for logging in, because the user has everything correct, becuase it is created, so errors must come from something else.
    @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            render json: @user, status: 200
        else
            render json: { errors: session.errors.full_messages }, status: 400
        end
  end

  def destroy
    session.clear
  end
end
