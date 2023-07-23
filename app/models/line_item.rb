class LineItem < ApplicationRecord

  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :unit_price, presence: true, numericality: { greater_than: 0 }

  belongs_to :product
  belongs_to :purchase_order



   # Calculate the total price for each purchase order
  def self.calculate_total_price_per_purchase_order
    # Group line items by purchase_order_id and calculate the sum of total_price_lt for each group
    line_items_totals = group(:purchase_order_id).sum(:total_price_lt)

    # Return a hash containing purchase_order_id as key and the total_price as value
    line_items_totals.transform_keys { |purchase_order_id| PurchaseOrder.find(purchase_order_id).order_total_price }
  end

end
