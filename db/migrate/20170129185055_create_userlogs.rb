class CreateUserlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :userlogs do |t|
      t.integer :processcode_id

      t.timestamps
    end
  end
end
