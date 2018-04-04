class ActivityController < ApplicationController
  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activity_params)
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :activity_category, :user_id, :vacation_id)
  end
end
