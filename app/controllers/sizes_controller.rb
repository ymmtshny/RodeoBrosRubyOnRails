class SizesController < ApplicationController
    before_action :set_size, only: [:edit, :update, :destroy]
    
    def new
        @size = Size.new
    end
    
    def show
        @size = Size.all
    end
    
    def create
        @size = Size.new(size_params)
        @size.save
        redirect_to show_size_path , notice: 'サイズを保存しました'
    end
    
    def edit
    end
    
    def set_size
        @size = Size.find(params[:id])
    end
    
    def update
    if @size.update(size_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to show_size_path , notice: 'サイズを編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
    end
  
    def destroy
        @size.destroy
        redirect_to show_size_path, notice: 'サイズを削除しました'
    end
  

    
    private
    def size_params
        params.require(:size).permit(:id,
                                     :item_number,
                                     :measurement)
    end
  
end

