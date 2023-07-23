class LineItemController < ApplicationController

  include CurrentPurchaseOrder
  before_action :set_purchase_order, only: %i[ create ]



  def new
    @line_item = LineItem.new
  end

  def create
    @line_item = LineItem.new(line_item_params)
    
    @line_item.purchase_order_id = @purchase_order.id
    @line_item.total_price_lt = @line_item.unit_price * @line_item.quantity
    #debugger
    @line_item.order_user_id = current_stuff.id

    #debugger
    
    @line_item.save

    
  end

  

  private

  def line_item_params
    params.require(:line_item).permit(:product_id, :supplier_id, :quantity, :unit_price)
  end
end
