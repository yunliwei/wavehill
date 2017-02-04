class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :login
      t.string :password_digest
      t.string :auth
      t.integer :state

      t.timestamps
    end
  end
end
