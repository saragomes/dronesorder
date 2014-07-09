class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :consultant_id
      t.integer :client_id
      t.decimal :total_htt
      t.decimal :total_htc
      t.decimal :shipping
      t.decimal :taxes
      t.decimal :reduction

      t.timestamps
    end
  end
end
