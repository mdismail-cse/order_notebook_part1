class AddSupplierIdToLineItem < ActiveRecord::Migration[7.0]
  def change
    add_column :line_items, :supplier_id, :integer
  end
end
