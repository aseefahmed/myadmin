class BrandsController < ApplicationController
  def index
    @brands = Brand.all
    @brand = Brand.new
  end

  def create
    @brand = Brand.create(brand_params)

    if @brand.save
      flash[:notice] = "You have successfully created a brand"
      redirect_to brands_path
    end
  end

  private

  def brand_params
    params.require(:brand).permit(:brand_name, :image)
  end
end
