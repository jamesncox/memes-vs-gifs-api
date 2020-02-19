class GifsController < ApplicationController

    def index
        @gifs = Gif.all 
        render json: @gifs, include: :caption, status: 200
    end

    def show
        @gif = Gif.find_by(:id params[:id])
        render json: @gif, include: :caption, status: 200
    end

    def create
        @gif = Gif.create(gif_params)
        render json: @gif, include: :caption, status: 200
    end

    def update
        @gif = Gif.find_by(id: params[:id])
        @gif.update(gif_params)
        render json: @gif, include: :caption, status: 200
    end

    def destroy
        @gif.destroy
        head :no_content
    end

    private
        def gif_params
            params.require(:gif).permit(:gif_id, :url)
        end
        
end
