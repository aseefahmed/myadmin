class RenameColumnToOrder121 < ActiveRecord::Migration[5.0]
  def change
    rename_column(:orders, :productstyle, :product_style_id)
  end
end
