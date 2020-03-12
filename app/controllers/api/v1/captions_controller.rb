class Api::V1::CaptionsController < ApplicationController

    def index
        @captions = Caption.all
        render json: @captions, status: 200
    end

    # def show
    #     @caption = Caption.find_by(id: params[:id])
    #     render json: @caption, status: 200
    # end

    def create
        @caption = Caption.new(caption_params)
        if @caption.save 
            render json: @caption, status: 200
        else
            render json: { errors: @caption.errors.full_messages }, status: 400 
        end
    end

    # def update
    #     @caption = Caption.find_by(id: params[:id])
    #     @caption.update(caption_params)
    #     render json: @caption, status: 200
    # end

    def destroy
        @caption.destroy
        head :no_content
    end

    private
        def caption_params
            params.require(:caption).permit(:text, :rating, :user_id)
        end
end

