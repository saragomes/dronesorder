class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :gender
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :telephone
      t.string :billing_address
      t.string :zipcode
      t.string :city

      t.timestamps
    end
  end
end
