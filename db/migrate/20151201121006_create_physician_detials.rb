class CreatePhysicianDetials < ActiveRecord::Migration
  def change
    create_table :physician_details do |t|
    	t.string :qualification, limit: 255, null: false
	    t.string :designation, limit: 255, null: false
	    t.string :physician_group, limit: 255, null: false
	    t.string :primary_address, limit: 255, null: false
	    t.string :department, limit: 255, null: false
	    t.string :first_name, limit: 255, null: false
	    t.string :middle_name, limit: 255, null: false
	    t.integer :npi_number, limit: 4,   null: false
	    t.string :last_name, limit: 255, null: false
	    t.string :email_id, limit: 255
	    t.integer :years_of_experience, limit: 4, null: false
	    t.string :physician_relationship, limit: 10
	    t.boolean :is_involved, null: false, default: false
	    t.boolean :is_lead, null: false, default: false
	    t.references :speciality, null: false, index: true
	  	t.references :location, null: false, index: true 
	  	t.references :client, null: false, index: true

	    t.integer :created_by, null: false
	    t.integer :updated_by, null: false
      t.timestamps null: false
    end
  end
end

