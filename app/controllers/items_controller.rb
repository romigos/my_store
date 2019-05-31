class ItemsController < ApplicationController
  def index
    @iItems = Item.all
  end
end
