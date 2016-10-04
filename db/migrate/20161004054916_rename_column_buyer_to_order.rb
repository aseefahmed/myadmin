class RenameColumnBuyerToOrder < ActiveRecord::Migration[5.0]
  def change
    rename_column(:orders, :buyer, :buyer_id)
  end
end
