class SessionsController < ApplicationController
  #test change
  def new

  end

  def auth
    render json: {csrf_auth_token: form_authenticity_token}
  end
  
  def create

  end

  def destroy

  end
end
