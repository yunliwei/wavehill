class CreateBusadmins < ActiveRecord::Migration[5.0]
  def change
    create_table :busadmins do |t|
      t.integer :officialaccount_id
      t.string :name
      t.string :login
      t.string :password_digest
      t.integer :state
      t.string :auth

      t.timestamps
    end
  end
end
