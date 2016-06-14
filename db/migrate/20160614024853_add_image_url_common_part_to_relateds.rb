class AddImageUrlCommonPartToRelateds < ActiveRecord::Migration
  def change
    add_column :relateds, :imageURLCommonPart, :string
  end
end
