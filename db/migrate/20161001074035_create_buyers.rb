class CreateBuyers < ActiveRecord::Migration[5.0]
  def change
    create_table :buyers do |t|
      t.string "buyer_name"
      t.timestamps
    end
  end
end
