class BuyersController < ApplicationController
  def index
    @buyers = Buyer.all
    @buyer  = Buyer.new
  end

  def create
    @buyer = Buyer.create(buyer_params)

    if @buyer.save
      flash[:notice] = "You have successfully created a buyer"
      redirect_to buyers_path
    end
  end


  private

  def buyer_params
    params.require(:buyer).permit(:buyer_name, :image)
  end
end
