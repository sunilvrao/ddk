class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :dashboards, :user_id
  end
end
