class AddMeasurementToSizes < ActiveRecord::Migration
  def change
    add_column :sizes, :measurement, :string
  end
end
