class RemoveMeasurmentFromSizes < ActiveRecord::Migration
  def change
    remove_column :sizes, :measuremnt, :string
  end
end
