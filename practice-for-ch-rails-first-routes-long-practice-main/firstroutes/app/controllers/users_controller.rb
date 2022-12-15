class UsersController < ApplicationController
    def index
        # @users = user.all
        # render json: @users
        
        render json: User.all
    end

    def create
        # render json: params
        user = User.new(user_params)
            if user.save
                render json: user
            else
                render json: user.errors.full_messages, status: :unprocessable_entity
            end
        # render json: user
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
        user = User.find(params[:id])
        if user.update(user_params)
            redirect_to user_url(user)
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to user_url
    end

    private
    def user_params
        params.require(:user).permit(:username)
    end
end
