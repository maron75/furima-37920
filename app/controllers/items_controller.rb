class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:item]

  def index
    @item = Item.all
  end

  def new
    @item = Item.new
  end


  def create
    @item = Item.new(item_params)
    if@item.save
      redirect_to root_path
    else
      render :new
    end
  end
  

  private

  def item_params
    params.require(:item).permit(:name, :detail, :category_id, :condition_id, :shipping_cost_id, :prefecture_id, :shipping_day_id, :price, :user).merge(user_id: current_user.id)
  end
end
