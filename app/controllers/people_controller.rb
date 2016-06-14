class PeopleController < ApplicationController
  
  before_action :set_person, only: [:edit, :update, :destroy]
    
  def index
  end
  
  def show
    @person = Person.new
    @person = Person.all
  end
  
  def new
    @person = Person.new
  end
  
  def create
    @person = Person.new(person_params)
    @person.save
    redirect_to show_person_path , notice: '商品情報を保存しました'
  end
  
  def edit
  end
  
  def update
    if @person.update(person_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to show_person_path , notice: 'モデルサイズを編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
  
  
  def set_person
    @person = Person.find(params[:id])
  end
  
  def destroy
     @person.destroy
     redirect_to show_person_path, notice: 'モデルサイズを削除しました'
  end
  
  
  
  private
  def person_params
    params.require(:person).permit(:id,
                                    :name,
                                    :height,
                                    :weight,
                                    :size)
  end
  
  
end
