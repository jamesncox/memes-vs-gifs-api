class CaptionsController < ApplicationController
    # Do I need a before action?
    before_action :load_captionable

    def index
        # Is this syntax correct?
        @captions = @captionable.captions
        render json: @captions, status: 200
    end

    def show
        # Do I repeat the @captionable.captions pattern in the rest of the actions?
        @caption = Caption.find_by(:id params[:id])
        render json: @caption, status: 200
    end

    def create
        @caption = Caption.create(caption_params)
        render json: @caption, status: 200
    end

    def update
        @caption = Caption.find_by(id: params[:id])
        @caption.update(caption_params)
        render json: @caption, include: :caption, status: 200
    end

    def destroy
        @caption.destroy
        head :no_content
    end

    private
        def caption_params
            params.require(:caption).permit(:text, :rating)
        end

        def load_captions

        end
        
end

