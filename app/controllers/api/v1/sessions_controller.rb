class Api::V1::SessionsController < ApplicationController
  
  def new

  end

  # def auth_check
  #   # logged_in?
  #   render json: {csrf_auth_token: form_authenticity_token}
  # end
  
  def create
    user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            log_in(user)
            render json: user, status: 200
        else
            render json: { errors: user.errors.full_messages }
        end
  end

  def destroy
     # reset_session
     session.delete(:user_id)
     render json: {status: 200}
  end
end
