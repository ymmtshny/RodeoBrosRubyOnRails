class ImagesController < ApplicationController
  
  before_action :set_image, only: [:edit, :update, :destroy, :copy]

  def index
  end
  
  def copy 
      @newImage = Image.new
      @newImage.item_number = @image.item_number
      @newImage.save
      redirect_to show_image_path , notice: '画像をコピーしました。'
  end
  
  def show
    @image = Image.new
    @image = Image.all.reverse
  end
  
  def new
    @image = Image.new
  end
  
  def create
    @image = Image.new(image_params)
    @image.save
    redirect_to show_image_path , notice: '画像情報を保存しました'
  end
  
  def edit
    
  end
  
  def update
    if @image.update(image_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to show_image_path , notice: '画像を編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
  
  def destroy
    @image.destroy
    redirect_to show_image_path, notice: '商品を削除しました'
  end
  
  def set_image
    @image = Image.find(params[:id])
  end
  
  private
  def image_params
    params.require(:image).permit(:id,
                                 :imageURLCommonPart,
                                 :description,
                                 :item_number)
  end
  
end
