class AddColumnToRelated < ActiveRecord::Migration
  def change
    add_column :relateds, :parentItemNumber, :string
  end
end
