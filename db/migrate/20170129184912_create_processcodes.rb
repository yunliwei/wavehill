class CreateProcesscodes < ActiveRecord::Migration[5.0]
  def change
    create_table :processcodes do |t|
      t.string :process

      t.timestamps
    end
  end
end
