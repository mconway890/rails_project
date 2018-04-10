class VacationsController < ApplicationController
  def index
    if params[:user_id]
      @vacations = User.find(params[:user_id]).vacations
    else
      @vacations = Vacation.all
    end
  end

  def show
    @vacation = Vacation.find(params[:id])
  end

  def new
    @vacation = Vacation.new
    @user = User.find_by(params[:id])
  end

  def create
    @vacation = Vacation.create(vacation_params)
    redirect_to vacations_path
  end

  def edit
    @vacation = Vacation.find_by(params[:id])
  end

  def update
    @vacation = Vacation.find_by(params[:id])
    @vacation.update(vacation_params)
  end

  def destroy
    @vacation = Vacation.find_by(params[:id])
    @vacation.destroy
    redirect_to root_path, :notice => "Your vacation was deleted."
  end

  private

  def vacation_params
    params.require(:vacation).permit(:name, :destination, :start, :end, :user_id, :item_id, :activity_id)
  end
end
