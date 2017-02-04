class CreateOrderdetails < ActiveRecord::Migration[5.0]
  def change
    create_table :orderdetails do |t|
      t.integer :good_id
      t.integer :order_id
      t.integer :number

      t.timestamps
    end
  end
end
