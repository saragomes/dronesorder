class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :billing_address
      t.string :zip_code
      t.string :city

      t.timestamps
    end
  end
end
