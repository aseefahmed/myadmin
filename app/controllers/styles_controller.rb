class StylesController < ApplicationController
  def index
    @styles = Style.all
    @newstyles  = Style.new
  end

  def create
    style = Style.create(style_params)

    if style.save
      flash[:notice] = "You have successfully created a style"
      redirect_to styles_path
    end
  end


  private

  def style_params
    params.require(:style).permit(:style_name, :image)
  end
end
