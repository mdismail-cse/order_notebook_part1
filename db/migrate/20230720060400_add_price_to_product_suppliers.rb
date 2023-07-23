class AddPriceToProductSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_column :product_suppliers, :price, :integer
  end
end
