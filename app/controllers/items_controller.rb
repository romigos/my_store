class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  # /items/1 GET
  def show
    unless @item = Item.where(id: params[:id]).first
      render :text => 'Not Found', :status => '404'
    end
  end

  # /items/new GET
  def new
    @item = Item.new
  end
  # /items/creat
end
