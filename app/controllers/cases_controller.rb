class CasesController < ApplicationController
  def index
    @cases = Case.where(user_id: current_user.id).order(created_at: :asc)
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.new(case_params)
    @case.case_status = "New"
    @case.save
    flash[:notice] = "Case was saved."
    redirect_to @case
  end

  def show
    @case = Case.find(params[:id])
    @comment = Comment.new()
  end

  def destroy
    @case = Case.find(params[:id])
    @case.update(:case_status => "Closed")
    @case.save
    flash[:notice] = "Case was closed"
  end

  def update
    @case = Case.find(params[:id])
    @case.update(case_params)
    @case.save
    flash[:notice] = "Case was updated"
    redirect_to @case
  end

  private
        def case_params
            params.require(:case).permit(:casetitle, :casedescription, :user_id, :appartment_id)
        end

end
