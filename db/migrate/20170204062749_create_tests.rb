class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.string :login
      t.integer :age
      t.string :name

      t.timestamps
    end
  end
end
