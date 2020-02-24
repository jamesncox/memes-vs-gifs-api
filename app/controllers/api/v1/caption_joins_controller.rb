class Api::V1::CaptionJoinsController < ApplicationController
    def create
        byebug
        if params[:meme_id]
            captionable = Meme.find(params[:meme_id])
        else params[:gif_id]
            captionable = Gif.find(params[:gif_id])
        end
        caption = captionable.captions.new(caption_params)
        # caption.user = current_user
        if caption.save 
            #render json:
        else
            #render json:
        end
    end

    private
        def caption_join_params
            params.require(:caption_join).permit(:caption_id, :captionable_id, :captionable_type)
        end
end