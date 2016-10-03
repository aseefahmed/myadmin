class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.create(supplier_params)

    if @supplier.save
      flash[:notice] = "Supplier has been added successfully."
      redirect_to suppliers_path
    end
  end

  def edit

  end

  private

  def supplier_params
    params.require(:supplier).permit(:supplier_name, :contact_person, :contact_number, :email,
                                     :address_line_1, :address_line_2, :town, :city,
                                      :post_code, :country_code, :description, :image)
  end
end
