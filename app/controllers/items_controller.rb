class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @items = Item.find(params[:id])
  end

  def new
    @items = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :items)
  end

end

