class CasesController < ApplicationController
  def index
    @cases = Case.where(user_id: current_user.id).order(created_at: :asc)
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.new(case_params)
    @case.received!
    @case.save
    flash[:notice] = "Case was saved."
    redirect_to @case
  end

  def show
    @case = Case.find(params[:id])
    @suppliers = User.where(:usertype => "supplier")
    @comment = Comment.new()
  end

  def destroy
    @case = Case.find(params[:id])
    @case.resolved!
    @case.save
    flash[:notice] = "Case was closed"
  end

  def update
    @case = Case.find(params[:id])
    @case.update(case_params)

    if @case.assigned_to != ""
      @case.assigned!
      NotifierMailer.with(case: @case).case_assigned.deliver_now
    end

    if @case.save
      flash[:notice] = "Case was updated"
    else
      flash[:notice] = "Something went wrong"
    end
    redirect_to @case
  end

  private
        def case_params
            params.require(:case).permit(:casetitle, :casedescription, :user_id, :appartment_id, :assigned_to)
        end

end
