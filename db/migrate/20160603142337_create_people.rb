class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :height
      t.string :weight
      t.string :size

      t.timestamps null: false
    end
  end
end