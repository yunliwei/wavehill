class CreateOfficialusers < ActiveRecord::Migration[5.0]
  def change
    create_table :officialusers do |t|
      t.integer :officialaccount_id
      t.integer :user_id

      t.timestamps
    end
  end
end
