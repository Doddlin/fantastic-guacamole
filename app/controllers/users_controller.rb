class UsersController < ApplicationController
    def update
        User.save
        redirect_to :resource
    end

end