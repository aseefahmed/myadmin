module CommonHelper
  def get_new_orders
    @new_orders = Order.take(5)
  end

end