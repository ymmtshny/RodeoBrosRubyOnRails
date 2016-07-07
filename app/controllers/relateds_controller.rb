class RelatedsController < ApplicationController
  before_action :set_related, only: [:edit, :update, :destroy, :copy]

  def index
  end
  
  def copy 
      @newRelated = Related.new
      @newRelated.itemName = @related.itemName
      @newRelated.itemNumber = @related.itemNumber
      @newRelated.imageURLCommonPart = @related.imageURLCommonPart
      @newRelated.save
      redirect_to show_related_path , notice: '関連商品ををコピーしました。'
  end
  
  def show
    @related = Related.new
    @related = Related.all.reverse
  end
  
  def new
    @related = Related.new
  end
  
  def create
    @related = Related.new(related_params)
    @related.save
    redirect_to show_related_path , notice: '関連商品を保存しました'
  end
  
  def edit
    
  end
  
  def update
    if @related.update(related_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to show_related_path , notice: '関連商品を編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
  
  def destroy
    @related.destroy
    redirect_to show_related_path, notice: '関連商品を削除しました'
  end
  
  def set_related
    @related = Related.find(params[:id])
  end
  
  private
  def related_params
    params.require(:related).permit(:id,
                                 :itemName,
                                 :itemNumber,
                                 :parentItemNumber,
                                 :imageURLCommonPart)
  end
end
