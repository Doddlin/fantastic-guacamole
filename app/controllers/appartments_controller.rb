class AppartmentsController < ApplicationController

    def new
        @appartment = Appartment.new
    end

    def index
        @appartments = Appartment.all
        @appartment = Appartment.new
    end

    def create
        @appartment = Appartment.new(appartment_params)
        @appartment.save
        flash[:notice] = "Apartment was saved."
        redirect_to @appartment
    end

    def show
        @appartment = Appartment.find(params[:id])
    end

    def destroy
        @appartment = Appartment.find(params[:id])
        @appartment.destroy
        flash[:notice] = "Apartment was deleted."
        redirect_to appartments_path
    end

    private
        def appartment_params
            params.require(:appartment).permit(:appartmentnr, :habitant, :address, :town, :country, :estate_id)
        end


end
