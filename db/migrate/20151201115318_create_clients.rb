class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.string :name, limit: 255, null: false
    	
    	t.integer :created_by, null: false
    	t.integer :updated_by, null: false
    	t.timestamps null: false
    end
  end
end
