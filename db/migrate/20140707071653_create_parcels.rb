class CreateParcels < ActiveRecord::Migration
  def change
    create_table :parcels do |t|
      t.integer :client_id
      t.string :name
      t.integer :hectare

      t.timestamps
    end
  end
end
