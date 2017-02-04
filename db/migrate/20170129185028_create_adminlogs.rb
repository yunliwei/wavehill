class CreateAdminlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :adminlogs do |t|
      t.integer :processcode_id

      t.timestamps
    end
  end
end
