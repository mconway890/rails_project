class VacationsController < ApplicationController
  def index
    @vacations = Vacation.all
  end

  def new
    @vacation = Vacation.new
    @user = User.find(params[:id])
  end

  def create
    @vacation = Vacation.create(vacation_params)
    redirect_to user_vacation_path(@vacation)
  end

  private

  def vacation_params
    params.require(:vacation).permit(:name, :destination, :type, :start, :end)
  end
end
