class ItemsController < ApplicationController
  
  before_action :set_item, only: [:edit, :update, :destroy]
  before_action :set_brand, only: [:show]
  
  def index
  end
  
  def show
    @item = Item.new
    @item = Item.all
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to show_item_path , notice: '商品情報を保存しました'
  end
  
  def edit
  end
  
  def destroy
    @item.destroy
    redirect_to show_item_path, notice: '商品を削除しました'
  end
  
  def set_brand
    @brand = Brand.all
  end
  
  def set_item
    @item = Item.find(params[:id])
  end
  
  private
  def item_params
    params.require(:item).permit(:id,
                                 :name,
                                 :number,
                                 :imgURLcommonPart,
                                 :brandId,
                                 :category,
                                 :description)
  end
  


end
