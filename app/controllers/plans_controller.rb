class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

	before_action :authenticate_user!

  respond_to :html

  def index
    @plans.where(user_id: current_user.id)
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

  private
    def set_plan
      @plan = Plan.find(params[:id])
    end

    def plan_params
      params.require(:plan).permit(:name, :user_id)
    end
end