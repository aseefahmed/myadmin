class BrandController < ApplicationController
  def index
    @brands = Brand.all
  end
end
