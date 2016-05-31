class BrandsController < ApplicationController
  
  before_action :set_brand, only: [:edit, :update, :destroy]
  
  def index
    @brand = Brand.new
    # Messageを全て取得する。
    @brand = Brand.all
  end
  
  def show
    @brand = Brand.new
    # Messageを全て取得する。
    @brand = Brand.all
  end
  
  
  def new
    @brand = Brand.new
  end
  
  def create
    @brand = Brand.new(brand_params)
    @brand.save
    redirect_to show_brand_path , notice: 'ブランドを保存しました'
  end
  
  def edit
    
  end
  
  def update
    if @brand.update(brand_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to show_brand_path , notice: 'ブランドを編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
  
  def set_brand
    @brand = Brand.find(params[:id])
  end
  
  
  def destroy
    @brand.destroy
    redirect_to show_brand_path, notice: 'ブランドを削除しました'
  end
  
  private
  def brand_params
    params.require(:brand).permit(:id, :nameEng, :nameJP, :rakutenURL, :yahooURL, :officialURL)
  end
  
end
