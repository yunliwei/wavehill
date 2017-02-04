class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :officialuser_id
      t.integer :ordernumber
      t.float :paymentprice
      t.integer :paymentstate
      t.integer :deliverstate
      t.string :deliver
      t.string :delivernumber
      t.integer :receivestate
      t.datetime :receivedate

      t.timestamps
    end
  end
end
