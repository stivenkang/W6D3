class ArtworksController < ApplicationController

    def index 
        render json: Artwork.all 
    end

    def create 
        art = Artwork.new(artwork_param)

            if art.save 
                render json: art 
            else 
                render json: art.errors.full_messages, status: :unprocessable_entity
            end
    end

    def show 
        art = Artwork.find(params[:id])
        render json: art 
    end

    def update 
        art = Artwork.find(params[:id])
        if art.update(artwork_param)
            redirect_to artwork_url(art)
        else  
            render json: art.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy 
        art = Artwork.find(params[:id])
        art.destroy 
        redirect_to artwork_url
    end

    private 

    def artwork_param
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end
