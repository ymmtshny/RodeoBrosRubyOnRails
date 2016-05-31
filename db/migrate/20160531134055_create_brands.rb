class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :nameJP
      t.string :nameEng
      t.string :rakutenURL
      t.string :yahooURL
      t.string :officialURL

      t.timestamps null: false
    end
  end
end
