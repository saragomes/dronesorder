class CreateDrones < ActiveRecord::Migration
  def change
    create_table :drones do |t|
      t.string :name
      t.integer :category
      t.decimal :price

      t.timestamps
    end
  end
end
