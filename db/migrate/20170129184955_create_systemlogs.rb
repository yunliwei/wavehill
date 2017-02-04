class CreateSystemlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :systemlogs do |t|
      t.integer :processcode_id

      t.timestamps
    end
  end
end
