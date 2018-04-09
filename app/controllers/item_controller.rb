class ItemController < ApplicationController
  def index
      @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    redirect_to items_path
  end

  def edit
    @item = Item.find_by(params[:id])
  end

  def update
    @item = Item.find_by(params[:id])
    @item.update(item_params)
  end

  def destroy
    @item = Item.find_by(params[:id])
    @item.destroy
    redirect_to root_path, :notice => "Your item was deleted."
  end


  private

  def item_params
    params.require(:item).permit(:name, :item_category, :user_id, :vacation_id)
  end
end
