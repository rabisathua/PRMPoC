class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.string :name, limit: 255, null: false
    	t.string :zip, limit: 5, null: false

    	t.references :client, null: false, index: true, foreign_key: true
      t.integer :ref_no    	
    	t.integer :created_by, null: false
    	t.integer :updated_by, null: false
      t.timestamps null: false
    end
  end
end
