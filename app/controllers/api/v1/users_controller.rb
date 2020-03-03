class Api::V1::UsersController < ApplicationController

    def create
        @user = User.new(user_params)
        if @user.save
            log_in(@user)
            cookies["logged_in"] = true 
            render json: @user, status: 200
        else
            render json: { errors: @user.errors.full_messages }, status: 400 
        end
    end

    def show
        @user = User.find(params[:id])
        render json: @user, status: 200
    end

    def destroy
        @user.destroy
        head :no_content
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
