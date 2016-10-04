class RenameColumnToOrder < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :product_style_id, :productstyle
  end
end
