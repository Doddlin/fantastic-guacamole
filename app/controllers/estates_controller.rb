class EstatesController < ApplicationController
    def new
        @estate = Estate.new
    end

    def index
        @estates = Estate.all
    end
    

    def create
        @estate = Estate.new(estate_params)
        @estate.save
        redirect_to(@estate)
    end

    def show
        @estate = Estate.find(params[:id])
    end

    private

    def estate_params
        params.require(:estate).permit(:address, :zipcode, :propowner_id)
    end

end