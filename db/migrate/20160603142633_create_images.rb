class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :imageURLCommonPart
      t.text :description

      t.timestamps null: false
    end
  end
end
