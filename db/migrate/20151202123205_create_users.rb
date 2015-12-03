class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, index: true
      t.string :password, null: false
      t.string :salt, null: false
      t.string :auth_token
      t.datetime :last_login
      t.datetime :expiry
      t.references :client, null: false, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
