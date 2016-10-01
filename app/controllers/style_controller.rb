class StyleController < ApplicationController
  def index
    @styles = Style.all
  end
end
