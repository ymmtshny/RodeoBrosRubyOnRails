class ItemsController < ApplicationController
  
  before_action :set_item, only: [:edit, :update, :destroy]
  before_action :set_brand
  before_action :set_person
  before_action :find_item, only: [:rakuten, 
                                   :yahoo,
                                   :official,
                                   :rakuten2nd,
                                   :copy
                                   
                                   ]
  
  def index
  end
  
  def rakuten
  end
  
  def rakuten2nd
  end

  def yahoo
  end

  def official
  end
  
  def copy
    @newitem = Item.new
    @newitem.brand_id = @item.brand_id
    @newitem.description = @item.description
    @newitem.detail = @item.detail
    @newitem.category = @item.category
    @newitem.model_id = @item.model_id
    @newitem.material = @item.material
    @newitem.madein = @item.madein
    @newitem.process = @item.process
    @newitem.save
    
    redirect_to show_item_path , notice: '商品情報をコピーしました。'
  end
  
  def find_item
    @item = Item.find(params[:id])
  end

  
  def show
    @item = Item.all.reverse
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
                                 :imgURLcommonPart,
                                 :detail)
  end

  


end
