class AddBrandToItems < ActiveRecord::Migration
  def change
    add_column :items, :brandId, :integer
  end
end
