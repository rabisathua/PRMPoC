class CreateClientUsers < ActiveRecord::Migration
  def change
    create_table :client_users do |t|
      t.references :client, null: false, index: true, foreign_key: true
      t.references :user, null: false, index: true, foreign_key: true

      t.userstamps
      t.timestamps null: false
    end
  end
end
