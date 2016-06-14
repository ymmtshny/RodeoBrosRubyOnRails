class ItemsController < ApplicationController
  
  before_action :set_item, only: [:edit, :update, :destroy]
  before_action :set_brand
  before_action :set_person
  before_action :find_item, only: [:rakuten, 
                                   :rakutenIframe,
                                   :yahoo,
                                   :yahooIframe,
                                   :official,
                                   :officialIframe
                                   ]
  
  def index
  end
  
  def find_item
    @item = Item.find(params[:id])
  end

  
  def rakuten
  end
  
  def rakutenIframe
  end

  def yahoo
  end
  
  def yahooIframe
  end

  def official
  end
  
  def officialIframe
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
  
  def update
    if @item.update(item_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to show_item_path , notice: '商品情報を編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
  
  def destroy
    @item.destroy
    redirect_to show_item_path, notice: '商品を削除しました'
  end
  
  def set_brand
    @brand = Brand.all
  end
  
  def set_person
    @person = Person.all
  end
  
  def set_item
    @item = Item.find(params[:id])
  end
  
  private
  def item_params
    params.require(:item).permit(:id,
                                 :name,
                                 :number,
                                 :brand_id,
                                 :category,
                                 :description,
                                 :material,
                                 :process,
                                 :madein,
                                 :model_id,
                                 :imgURLcommonPart)
  end


end
