module CommonHelper
  def get_new_orders
    @new_orders = Order.order(created_at: :desc).take(5)
  end

  def get_inactive_orders
    @new_orders = Order.order(created_at: :asc).take(5)
  end

  def get_inactive_orders
    @new_orders = Order.order(created_at: :asc).take(5)
  end

  def get_delivered_orders
    @new_orders = Order.all
  end
end