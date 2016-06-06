class AddImageUrlToBrand < ActiveRecord::Migration
  def change
    add_column :brands, :imageURL, :string
  end
end
