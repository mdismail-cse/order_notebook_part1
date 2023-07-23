module CurrentPurchaseOrder
    def set_purchase_order
      if session[:purchase_order_id]
        @purchase_order = PurchaseOrder.find_by(id: session[:purchase_order_id])
      end
  
      unless @purchase_order
        @purchase_order = PurchaseOrder.create
        session[:purchase_order_id] = @purchase_order.id
      end
  
      @purchase_order
    end
  end
  