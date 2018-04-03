class VacationsController < ApplicationController
  def index
    @vacations = Vacation.all
  end

  def new
    @vacation = Vacation.new
    @user = User.find_by(params[:id])
  end

  def create
    @vacation = Vacation.create(vacation_params)
    redirect_to vacations_index_path
  end

  def show
  end

  private

  def vacation_params
    params.require(:vacation).permit(:name, :destination, :traveler, :start, :end)
  end
end
