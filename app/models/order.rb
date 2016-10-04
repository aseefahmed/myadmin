class Order < ApplicationRecord
  belongs_to :product_style
  belongs_to :buyer

end
