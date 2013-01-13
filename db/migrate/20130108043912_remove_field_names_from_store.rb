class RemoveFieldNamesFromStore < ActiveRecord::Migration
  def up
    remove_column :stores, :phone
    remove_column :stores, :email
  end

  def down
    add_column :stores, :email, :string
    add_column :stores, :phone, :string
  end
end
