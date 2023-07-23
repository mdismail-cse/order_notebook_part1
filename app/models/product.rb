class Product < ApplicationRecord
    has_many :product_suppliers
    has_many :suppliers, through: :product_suppliers
    

    has_many :line_items
    has_many :purchase_orders, through: :line_items

end
