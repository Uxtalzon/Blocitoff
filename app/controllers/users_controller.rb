class UsersController < ApplicationController
  
  def show
    @item = Item.new
 #  @items = Item.where(user: current_user)
    @items = current_user.items
  end  
end
