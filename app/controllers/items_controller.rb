class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy, :upvote]
  before_action :check_if_admin, only: [:edit, :update, :destroy, :new, :create]
  def index
    @items = Item.all
  end

  def expensive
    @items = Item.where('price > 1000')
    render 'index'
  end

  # /items/1 GET
  def show
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

  # /items/1/edit GET
  def edit
  end

  # /items/1 PUT
  def update
    @item.update(item_params)
    if @item.errors.empty?
      redirect_to items_path(@item)
    else
      render 'edit'
    end
  end

  # /items/1 DELETE
  def destroy
    @item.destroy
    redirect_to items_path
  end

  def upvote
    @item.increment!(:votes_count)
    redirect_to action: :index
  end

  private

  def find_item
    @item = Item.find(params[:id])
    render_404 unless @item
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :real, :weight)
  end
end
