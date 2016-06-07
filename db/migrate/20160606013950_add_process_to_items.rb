class AddProcessToItems < ActiveRecord::Migration
  def change
    add_column :items, :process, :string
  end
end
