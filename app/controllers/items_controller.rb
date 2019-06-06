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

  # /items POST
  def create
    @item = Item.create(item_params)
    if @item.errors.empty?
      redirect_to item_path(@item)
    else
      render 'new'
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :real, :weight)
  end
end
