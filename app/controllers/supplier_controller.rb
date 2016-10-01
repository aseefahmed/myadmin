class SupplierController < ApplicationController
  def index
    @supplier = Supplier.all
  end
end
