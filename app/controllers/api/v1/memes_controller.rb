class Api::V1::MemesController < ApplicationController

    def index
        @memes = Meme.all 
        render json: @memes, include: :caption, status: 200
    end

    def show
        @meme = Meme.find_by(id: params[:id])
        render json: @meme, include: :caption, status: 200
    end

    def create
        # @meme = Meme.new(meme_params)
        # if @meme.save
        #     render json: @meme, include: :caption, status: 200
        # else 
        #     render json: {error: @meme.errors.full_messages}
        # end

        @meme = Meme.create(meme_params)
        render json: @meme
    end

    def update
        @meme = Meme.find_by(id: params[:id])
        @meme.update(meme_params)
        render json: @meme, include: :caption, status: 200
    end

    def destroy
        @meme.destroy
        head :no_content
    end

    private
        def meme_params
            params.require(:meme).permit(:meme_id, :url)
        end
end
