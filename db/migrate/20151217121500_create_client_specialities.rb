class CreateClientSpecialities < ActiveRecord::Migration
  def change
    create_table :client_specialities do |t|
      t.references :client, foreign_key: true
      t.references :speciality, foreign_key: true
      t.string :alternate_name # Used as client specific name for speciality

      t.userstamps
      t.timestamps null: false
    end

    add_index :client_specialities, [:client_id, :speciality_id], unique: true, name: 'by_client_id_and_speciality_id'
  end
end
