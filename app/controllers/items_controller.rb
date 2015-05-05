class ItemsController < ApplicationController
  respond_to :js
  
  def create
    @item = Item.new(item_params)
    @item.user = current_user
    @item.save
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
end