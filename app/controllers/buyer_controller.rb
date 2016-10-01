class BuyerController < ApplicationController
  def index
    @buyers = Buyer.all
  end
end
