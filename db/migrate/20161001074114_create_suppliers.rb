class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.text "description"
      t.string "supplier_name"
      t.string "image_thumbnail"
      t.string "address_line_1"
      t.string "address_line_2"
      t.string "town"
      t.string "city"
      t.string "post_code"
      t.string "country_code", limit: 3
      t.string "email"
      t.string "contact_person"
      t.string "contact_number"
      t.timestamps
    end
  end
end
