class RemoveArrayFromSizes < ActiveRecord::Migration
  def change
    remove_column :sizes, :Array, :string
  end
end
