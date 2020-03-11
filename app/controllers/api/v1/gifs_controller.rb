class Api::V1::GifsController < ApplicationController

    def index
        @gifs = Gif.all 
        render json: @gifs, include: [:captions, :caption_joins], status: 200
    end

    def show
        @gif = Gif.find_by(id: params[:id])
        render json: @gif, include: :captions, status: 200
    end

    def create
        @gif = Gif.create(gif_params)
        render json: @gif, status: 200
    end

    def update
        @gif = Gif.find_by(id: params[:id])
        @gif.update(gif_params)
        render json: @gif, include: :captions, status: 200
    end

    def destroy
        @gif = Gif.find_by(id: params[:id])
        @gif.destroy
        render json: @gif, status: 200
    end

    private
        def gif_params
            params.require(:gif).permit(:gif_id, :url, :username)
        end
        
end
