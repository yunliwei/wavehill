class CreateOfficialaccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :officialaccounts do |t|
      t.string :officialaccount
      t.string :apiid
      t.string :company

      t.timestamps
    end
  end
end
