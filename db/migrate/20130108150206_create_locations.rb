class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :type
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.references :store

      t.timestamps
    end
    add_index :locations, :store_id
  end
end
