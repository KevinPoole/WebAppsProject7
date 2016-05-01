class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

	before_action :authenticate_user!

  respond_to :html

  def index
    @plans = Plan.where(user_id: current_user.id)
    @course_options = CourseOption.all
    respond_with(@plans)
  end

  def show
    respond_with(@plan)
  end

  def new
    @plan = Plan.new
    respond_with(@plan)
  end

  def edit
  end

  def create
    @plan = Plan.new(plan_params)
		@plan.user_id = current_user.id
    @plan.save
    respond_with(@plan)
  end

  def update
    @plan.update(plan_params)
    respond_with(@plan)
  end

  def destroy
    @plan.destroy
    respond_with(@plan)
  end

  def add_term
    id = params[:plan_id]
    Term.create(plan_id:id,semester:params[:semester],year:params[:year])
    redirect_to action: "show", id: id
  end

	def delete_term
    params[:term_id]
    Term.where(id: params[:term_id]).where(plan_id:params[:plan_id]).destroy_all
    redirect_to action: "show", id: params[:plan_id]
  end

  def add_course_to_term
    name = params[:course_name]
    t_id = params[:term_id]
    Course.create(term_id:t_id,name: name)
    redirect_to action: "show", id: params[:plan_id]
  end

  def remove_course_from_term
    name = params[:course_name]
    t_id = params[:term_id]
    Course.where(term_id:t_id).where(name: name).destroy_all
    redirect_to action: "show", id: params[:plan_id]
  end


  private
    def set_plan
      @plan = Plan.find(params[:id])
    end

    def plan_params
      params.require(:plan).permit(:name, :user_id)
    end
end
