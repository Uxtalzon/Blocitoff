class ItemsController < ApplicationController
  
  def create
    @item = Item.new(item_params)
    @item.user = current_user
    @item.save
    redirect_to current_user
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
end