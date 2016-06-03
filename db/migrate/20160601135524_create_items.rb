class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name #商品名
      t.string :number #商品番号
      t.string :imgURLcommonPart #画像URL共通部分
      t.references :brand, index: true, foreign_key: true #ブランド #削除してstring型にしてしまった。
      t.string :type #種類　#削除した。後、categoryを追加した。
      t.text :description #商品説明文

      t.timestamps null: false
    end
  end
end
