class CreateLiasons < ActiveRecord::Migration
  def change
    create_table :liasons do |t|
      t.references :user, null: false, index: true, foreign_key: true 
      t.boolean :is_active, null: false, default: false

      t.integer :created_by
      t.integer :updated_by
      t.timestamps null: false
    end
  end
end
