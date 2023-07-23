class AddOrderUserIdToLineItem < ActiveRecord::Migration[7.0]
  def change
    add_column :line_items, :order_user_id, :integer
  end
end
