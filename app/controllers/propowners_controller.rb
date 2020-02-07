class PropownersController < ApplicationController
  def create
    @propowner = Propowner.new(propowner_params)
    @propowners = Propowner.all
    @propowner.save
    
  end

  def index
    @propowners = Propowner.all
    @propowner = Propowner.new
    
  end

  def new
  end

  private
        def propowner_params
            params.require(:propowner).permit(:propownername)
        end

end
