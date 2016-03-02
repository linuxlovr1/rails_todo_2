class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to items_path
    else
      render :new
    end

    def edit
      @items = Item.find(params[:id])
    end

    def update
      @item = Item.find(params[:id])

      if @item.update(tem_params)
        redirect_to items_path
      else
        render :edit
      end
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :items)
  end

end

