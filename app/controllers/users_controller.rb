class UsersController < ApplicationController

    def create
        
    end

    def update
        User.save
        redirect_to :resource
    end

end