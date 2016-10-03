class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @suppliers = Supplier.all
    @order  = Order.new
  end
end
