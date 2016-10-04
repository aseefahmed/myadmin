class CreateProductStyle < ActiveRecord::Migration[5.0]
  def change
    create_table :product_styles do |t|
      t.string "style_name"
      t.timestamps
    end
  end
end
