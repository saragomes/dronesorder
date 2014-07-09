class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :drone_id
      t.integer :parcel_id
      t.integer :order_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
