class AddColumnToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :product_style_id, :integer
  end
end
