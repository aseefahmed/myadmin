class Order < ApplicationRecord
  belongs_to :product_style
  belongs_to :buyer

  before_save do

  end

end
