class Api::V1::CaptionsController < ApplicationController

    def index
        @captions = Caption.all
        render json: @captions, status: 200
    end

    def show
        @caption = Caption.find_by(id: params[:id])
        render json: @caption, status: 200
    end

    # def create
    #     @caption = Caption.new(caption_params)
    #     if @caption.save
    #         render json: @caption, status: 200
    #     else 
    #         render json: {error: @caption.errors.full_messages}
    #     end

    #     # @caption = Caption.create(caption_params)
    #     # render json: @caption, status: 200
    # end

    def create
        if params[:meme_id]
            captionable = Meme.find(params[:meme_id])
        else params[:gif_id]
            captionable = Gif.find(params[:gif_id])
        end
        caption = captionable.captions.new(caption_params)
        caption.user = current_user
        if caption.save 
            #render json:
        else
            #render json:
        end
    end

    def update
        @caption = Caption.find_by(id: params[:id])
        @caption.update(caption_params)
        render json: @caption, status: 200
    end

    def destroy
        @caption.destroy
        head :no_content
    end

    private
        def caption_params
            params.require(:caption).permit(:text, :rating)
        end
end

