class CreateSpecialities < ActiveRecord::Migration
	def change
		create_table :specialities do |t|
			t.string :name, limit: 100, null: false

			t.references :client, null: false, index: true, foreign_key: true
			t.integer :created_by, null: false
			t.integer :updated_by, null: false
			t.timestamps null: false
		end
	end
end
