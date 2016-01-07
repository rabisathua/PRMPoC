class CreateLiasonPhysicians < ActiveRecord::Migration
  def change
    create_table :liason_physicians do |t|
      t.references :physician, null: false, index: true, foreign_key: true
      t.references :liason, null: false, index: true

      t.userstamps
      t.timestamps null: false
    end
  end
end
