class AddMaterialToItems < ActiveRecord::Migration
  def change
    add_column :items, :material, :string
  end
end
