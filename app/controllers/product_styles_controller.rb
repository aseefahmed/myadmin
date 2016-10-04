class ProductStylesController < ApplicationController
  def index
    @product_styles = ProductStyle.all
    @new_product_styles  = ProductStyle.new
  end

  def create
    product_style = ProductStyle.create(style_params)

    if product_style.save
      flash[:notice] = "You have successfully created a style"
      redirect_to product_styles_path
    end
  end


  private

  def style_params
    params.require(:product_style).permit(:style_name, :image)
  end
end
