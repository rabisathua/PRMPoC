class CreateSpecialities < ActiveRecord::Migration
	def change
		create_table :specialities do |t|
			t.string :name, limit: 100, null: false

			t.userstamps
			t.timestamps null: false
		end
	end
end
