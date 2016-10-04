class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @product_style = ProductStyle.all
    @order  = Order.new
  end

  def create
    @order = Order.create(orders_param)

    if @order.save
      flash[:notice] = "You have successfully created an order."
      redirect_to orders_path
    end
  end

  private

  def orders_param
    params.require(:order).permit(
                                    :buyer_id, :product_style_id, :order_id, :delivery_date,
                                    :gg, :qty, :fob,
                                    :weight_per_dzn, :qty_per_dzn, :total_yarn_weight, :total_yarn_cost,
                                    :acc_rate, :total_acc_cost, :btn_cost, :total_btn_cost, :zipper_cost, :total_zipper_cost, :print_cost, :total_print_cost
                                 )
  end
end
