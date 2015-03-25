class ItemsController < ApplicationController
  def create
    @item = current_user.items.build(params.require(:item).permit(:name))
    @item.save
    
    redirect_to current_user
  end
  
  def destroy
    item = Item.find(params[:id])
    item.destroy
    
    redirect_to current_user
  end
end
