class AddDetailsToItems < ActiveRecord::Migration
  def change
    add_column :items, :detail, :text
  end
end
