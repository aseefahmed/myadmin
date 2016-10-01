class SuppliersController < ApplicationController
  def index
    @supplier = Supplier.all
  end
end
