class CreateRelateds < ActiveRecord::Migration
  def change
    create_table :relateds do |t|
      t.string :itemName
      t.string :itemNumber

      t.timestamps null: false
    end
  end
end
