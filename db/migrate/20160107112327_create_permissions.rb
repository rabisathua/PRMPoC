class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :action
      t.string :resource

      t.userstamps
      t.timestamps null: false
    end
  end
end
