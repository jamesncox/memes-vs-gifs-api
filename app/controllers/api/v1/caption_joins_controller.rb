class Api::V1::CaptionJoinsController < ApplicationController
    # skip_before_action :verify_authenticity_token

    def index
        @caption_joins = CaptionJoin.all
        render json: @caption_joins, status: 200
    end

    def create
        meme = Meme.find_or_create_by(meme_id: params[:meme_id], meme_url: params[:meme_url])
        gif = Gif.find_or_create_by(gif_id: params[:gif_id], gif_url: params[:gif_url])
        caption = Caption.find_by(id: params[:caption_id])

        if meme 
            CaptionJoin.create(caption: caption, captionable: meme)
            render json: { message: "success" }
        else
            CaptionJoin.create(caption: caption, captionable: gif)
            render json: { message: "success" }
        end
    end

    private
        def caption_join_params
            params.require(:caption_join).permit(
                :caption_id, 
                :captionable_id, 
                :captionable_type, 
                :text, :meme_id, 
                :meme_url, 
                :gif_id, 
                :gif_url
                )
        end
end