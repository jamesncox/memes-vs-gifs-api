class Api::V1::CaptionJoinsController < ApplicationController
    # skip_before_action :verify_authenticity_token

    def index
        @caption_joins = CaptionJoin.all
        render json: @caption_joins, status: 200
    end

    def create
        @caption = Caption.find_by(id: params[:caption_id])
        @user = User.find_by(id: params[:user_id])
   
        if params[:meme_id]
            @meme = Meme.find_or_create_by(meme_id: params[:meme_id], meme_url: params[:meme_url])
            CaptionJoin.create(user: @user, caption: @caption, captionable: @meme)
            render json: @meme, include: [:captions, :caption_joins]
        else
            @gif = Gif.find_or_create_by(gif_id: params[:gif_id], gif_url: params[:gif_url])
            CaptionJoin.create(user: @user, caption: @caption, captionable: @gif)
            render json: @gif, include: [:captions, :caption_joins]
        end
    end

    private
        def caption_join_params
            params.require(:caption_join).permit(
                :caption_id, 
                # :text, 
                # :meme_id, 
                # :meme_url, 
                # :gif_id, 
                # :gif_url,
                :user_id,
                :captionable_id
                )
        end
end