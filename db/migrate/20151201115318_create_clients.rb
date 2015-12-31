class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.string :name, limit: 255, null: false
    	t.string :logo_path, null: false
    	t.string :description, limit: 255, null: false
    	t.string :init_path, limit: 100, null: false
    	t.boolean :is_enabled, null: false, default: false
        t.integer :ref_no

        t.userstamps
    	# t.integer :created_by, null: false
    	# t.integer :updated_by, null: false
    	t.timestamps null: false
    end
  end
end
