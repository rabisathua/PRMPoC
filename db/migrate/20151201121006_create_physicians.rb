class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
    	t.string :qualification, limit: 255, null: false
	    t.string :designation, limit: 255, null: false
	    t.string :group, limit: 255, null: false
	    t.string :address, limit: 255, null: false
	    t.string :department, limit: 255, null: false
	    t.string :first_name, limit: 255, null: false
	    t.string :middle_name, limit: 255, null: false
	    t.integer :npi_number, limit: 4,   null: false
	    t.string :last_name, limit: 255, null: false
	    t.string :email, limit: 255
	    t.decimal :years_of_experience, precision: 4, scale: 2, null: false, default: 0.0
	    t.boolean :is_involved, null: false, default: false
	    t.boolean :is_lead, null: false, default: false
	    t.references :speciality, null: false, index: true, foreign_key: true
	  	t.references :location, null: false, index: true, foreign_key: true
	  	t.references :client, null: false, index: true, foreign_key: true

	    t.userstamps
      t.timestamps null: false
    end
  end
end

