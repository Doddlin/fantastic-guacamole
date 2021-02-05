class UsersController < ApplicationController

    def create
        
    end

    def update
        User.save
        redirect_to :resource
    end

    def change_type
        @user = current_user
        @user.usertype = params[:usertype]
        @user.save
    end

end