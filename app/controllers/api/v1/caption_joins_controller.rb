class Api::V1::CaptionJoinsController < ApplicationController
    # skip_before_action :verify_authenticity_token

    def index
        @caption_joins = CaptionJoin.all
        render json: @caption_joins, status: 200
    end

    def create

        # m = Meme.create(meme_id: "606060606", meme_url: "https://i.imgflip.com/ybuzd.jpg")
        # c = Caption.find(45)
        # CaptionJoins.create(caption: c, captionable: m)

        meme = Meme.find_or_create_by(meme_id: params[:meme_id], meme_url: params[:meme_url])
        caption = Caption.find_by(id: params[:caption_id])
        CaptionJoin.create(caption: caption, captionable: meme)
        render json: { message: "success" }

        # meme = Meme.create(meme_id: params[:meme_id])
        #     if params[:meme_id]
        #         captionable = Meme.find(params[:meme_id])
        #     else
        #         captionable = Gif.find(params[:gif_id])
        #     end

        # caption_join = CaptionJoin.find_or_create_by(caption: caption, captionable: captionable)
        #     if caption_join.save 
        #         render json: {error: false}
        #     else
        #         render json: {error: true}
        #     end
    end

    private
        def caption_join_params
            # something is wrong with my params they way they are written, either in schema, or front end? Namespacing doesn't match?
            # also I will have to change my gif :url and meme :url attributes to :gif_url and :meme_url
            params.require(:caption_join).permit(:caption_id, :captionable_id, :captionable_type, :text, :meme_id, :meme_url, :gif_id, :gif_url)
        end
end