class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :wechat
      t.string :phone
      t.string :phonevalidate
      t.string :password_degest
      t.string :token

      t.timestamps
    end
  end
end
