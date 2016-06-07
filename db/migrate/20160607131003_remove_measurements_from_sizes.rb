class RemoveMeasurementsFromSizes < ActiveRecord::Migration
  def change
    remove_column :sizes, :measurement, :string
    (0..255).each do |i|
    remove_column :sizes, "measurement#{i}", :string
    end
  end
end
