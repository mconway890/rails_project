class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activity_params)
    redirect_to vacation_activity_path(@activity)
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :activity_category, :user_id, :vacation_id)
  end
end
