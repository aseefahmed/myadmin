# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161004054916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agents", force: :cascade do |t|
    t.string   "agent_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "brands", force: :cascade do |t|
    t.string   "brand_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "buyers", force: :cascade do |t|
    t.string   "buyer_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "supplier"
    t.integer  "brand"
    t.integer  "agent"
    t.integer  "buyer_id"
    t.integer  "lc_confirmed"
    t.string   "lc_doc",                 limit: 125
    t.string   "photo",                  limit: 55,  default: "no_image.png"
    t.date     "order_date"
    t.date     "delivery_date"
    t.integer  "gg"
    t.integer  "qty"
    t.float    "fob"
    t.float    "weight_per_dzn"
    t.float    "qty_per_dzn"
    t.float    "total_yarn_weight"
    t.float    "total_yarn_cost"
    t.float    "acc_rate"
    t.float    "total_acc_cost"
    t.float    "btn_cost"
    t.float    "total_btn_cost"
    t.float    "zipper_cost"
    t.float    "total_zipper_cost"
    t.float    "print_cost"
    t.float    "total_print_cost"
    t.float    "total_fob"
    t.float    "total_cost"
    t.float    "balance_amount"
    t.float    "cost_of_making"
    t.float    "compositions"
    t.float    "approved_yarn_amount"
    t.float    "approved_acc_amount"
    t.float    "approved_btn_amount"
    t.float    "approved_zipper_amount"
    t.float    "approved_print_amount"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.integer  "product_style_id"
  end

  create_table "product_styles", force: :cascade do |t|
    t.string   "style_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "recipes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.text     "description"
    t.string   "supplier_name"
    t.string   "image_thumbnail"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "town"
    t.string   "city"
    t.string   "post_code"
    t.string   "country_code",       limit: 3
    t.string   "email"
    t.string   "contact_person"
    t.string   "contact_number"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
