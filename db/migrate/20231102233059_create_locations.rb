class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :city
      t.string :state
      t.timestamps
    end

    add_column :locations, :coordinates, :geometry, geographic: true
  end
end
