class CreatePurchaseOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_orders do |t|
      t.integer :total_price_po

      t.timestamps
    end
  end
end
