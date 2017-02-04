class CreateAddrs < ActiveRecord::Migration[5.0]
  def change
    create_table :addrs do |t|
      t.integer :user_id
      t.string :address
      t.integer :isdefault

      t.timestamps
    end
  end
end
