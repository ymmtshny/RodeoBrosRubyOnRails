class RemoveBrandFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :brand, :string
  end
end
