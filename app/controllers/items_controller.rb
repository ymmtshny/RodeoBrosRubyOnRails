class ItemsController < ApplicationController
  
  before_action :set_item, only: [:edit, :update, :destroy]
  before_action :set_brand
  
  def index
  end
  
  def rakuten
    @item = Item.find(params[:id])
  end

  def yahoo
  end

  def official
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
                                 :brand_id,
                                 :category,
                                 :description)
  end


end
