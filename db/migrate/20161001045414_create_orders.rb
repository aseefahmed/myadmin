class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer "supplier"
      t.integer "brand"
      t.integer "agent"
      t.integer "buyer"
      t.integer "lc_confirmed"
      t.string "lc_doc", limit: 125
      t.string "photo", limit: 55, default: "no_image.png"
      t.date "order_date"
      t.date "delivery_date"
      t.integer "gg"
      t.integer "qty"
      t.float "fob"
      t.float "weight_per_dzn"
      t.float "qty_per_dzn"
      t.float "total_yarn_weight"
      t.float "total_yarn_cost"
      t.float "acc_rate"
      t.float "total_acc_cost"
      t.float "btn_cost"
      t.float "total_btn_cost"
      t.float "zipper_cost"
      t.float "total_zipper_cost"
      t.float "print_cost"
      t.float "total_print_cost"
      t.float "total_fob"
      t.float "total_cost"
      t.float "balance_amount"
      t.float "cost_of_making"
      t.float "compositions"
      t.float "approved_yarn_amount"
      t.float "approved_acc_amount"
      t.float "approved_btn_amount"
      t.float "approved_zipper_amount"
      t.float "approved_print_amount"
      t.timestamps
    end
  end
end

