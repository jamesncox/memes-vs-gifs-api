class ApplicationController < ActionController::API
    include ActionController::Cookies
    include ActionController::RequestForgeryProtection

    # protect_from_forgery with: :exception

    def log_in(user)
        session[:user_id] = user.id
        cookies["logged_in"] = true 
    end

    def current_user
        User.find_by(id: session[:user_id])
    end

    def logged_in?
        !!current_user
    end

end
