class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :description
      t.string :logo
      t.string :cc_auth_id
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :billing_address1
      t.string :billing_address2
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip
      t.string :billing_phone
      t.string :billing_email
      t.references :user

      t.timestamps
    end
    add_index :stores, :user_id
  end
end
