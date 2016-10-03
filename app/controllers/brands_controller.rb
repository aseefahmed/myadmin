class BrandsController < ApplicationController
  def index
    @branddf = Brand.all
  end
end
