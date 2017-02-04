class CreateGoods < ActiveRecord::Migration[5.0]
  def change
    create_table :goods do |t|
      t.integer :officialaccount_id
      t.string :goodsname
      t.float :price
      t.text :goodsdetail
      t.float :secondpriceratio
      t.float :firstprofitratio
      t.float :secondprofitratio
      t.float :thirdprofitratio

      t.timestamps
    end
  end
end
