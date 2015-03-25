class UsersController < ApplicationController
  def show
    @items = current_user.items
    @new_item = Item.new
  end
end
