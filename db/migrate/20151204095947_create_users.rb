class CreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false
      t.boolean :active, null: false, default: true
      t.string :type
      t.text :password_digest

      t.userstamps
      t.timestamps
    end

    add_index :users, :email
  end
end
