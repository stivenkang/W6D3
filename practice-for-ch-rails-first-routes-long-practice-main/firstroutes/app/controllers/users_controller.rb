class UsersController < ApplicationController
    def index
        # @users = user.all
        # render json: @users
        
        render plain: "I'm in the index action!"
    end
end
