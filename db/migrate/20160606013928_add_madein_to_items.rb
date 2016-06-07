class AddMadeinToItems < ActiveRecord::Migration
  def change
    add_column :items, :madein, :string
  end
end
