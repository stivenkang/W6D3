class ArtworkSharesController < ApplicationController
    def create
        artwork_share = ArtworkShare.new(artwork_shares_params)
        if artwork_share.save
            render json: artwork_share
        else
            render json: artwork_share.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        artwork_share = ArtworkShare.find(params[:id])
        artwork_share.delete
        redirect_to artwork_share_url
    end

    private

    def artwork_shares_params
        params.require(:artworkshare).permit(:artwork_id, :viewer_id)
    end
end
