class AddItemNumberToImages < ActiveRecord::Migration
  def change
    add_column :images, :item_number, :string
  end
end
