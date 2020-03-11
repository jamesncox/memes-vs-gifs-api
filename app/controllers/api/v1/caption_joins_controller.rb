class Api::V1::CaptionJoinsController < ApplicationController

    def index
        @caption_joins = CaptionJoin.all
        render json: @caption_joins, status: 200
    end

    def create
        @caption = Caption.find_by(id: params[:caption_id])
        @user = User.find_by(id: params[:user_id])
        if params[:meme_id]
            @meme = Meme.create(meme_id: params[:meme_id], meme_url: params[:meme_url])
            CaptionJoin.create(user: @user, caption: @caption, captionable: @meme)
            render json: @meme, include: [:captions, :caption_joins]
        elsif
            @gif = Gif.create(gif_id: params[:gif_id], gif_url: params[:gif_url])
            CaptionJoin.create(user: @user, caption: @caption, captionable: @gif)
            render json: @gif, include: [:captions, :caption_joins]
        else
            render json: { errors: @caption_join.errors.full_messages }, status: 400
        end
    end

    def destroy
        @caption_join = CaptionJoin.find_by(id: params[:id])
        @caption_join.destroy
        render json: @caption_join, status: 200
    end

    private
        def caption_join_params
            params.require(:caption_join).permit(
                :caption_id, 
                :user_id,
                :captionable_id
                )
        end
end