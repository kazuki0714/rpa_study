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

ActiveRecord::Schema.define(version: 2019_06_12_113702) do

  create_table "customers", force: :cascade do |t|
    t.string "company"
    t.string "category"
    t.string "name"
    t.string "staff"
    t.text "note"
    t.string "name_card"
    t.string "telephone"
    t.string "fax"
    t.string "cell_phone"
    t.string "mail_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "department"
  end

  create_table "fabrics", force: :cascade do |t|
    t.string "company"
    t.string "category"
    t.string "brand"
    t.string "chakubun"
    t.string "width"
    t.string "bante"
    t.string "konritsu"
    t.string "uchikomi"
    t.string "organization"
    t.string "standard"
    t.string "processing"
    t.string "supplement"
    t.string "bussei"
    t.string "sample"
    t.string "running"
    t.string "kibata"
    t.string "fee"
    t.string "weaver"
    t.string "factory"
    t.string "metsuke"
    t.string "min_order"
    t.string "min_processing"
    t.string "wash"
    t.string "image_fabric"
    t.string "image_color"
    t.string "image_product"
    t.decimal "hardness"
    t.decimal "thickness"
    t.decimal "brightness"
    t.decimal "design"
    t.decimal "stretch"
    t.decimal "function"
    t.decimal "stability"
    t.decimal "repellency"
    t.decimal "antifouling"
    t.decimal "abrasion"
    t.decimal "kickback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "number"
  end

  create_table "nuances", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "collection"
    t.string "number"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.integer "delivery"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "swatches", force: :cascade do |t|
    t.string "collection"
    t.string "number"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_swatches_on_customer_id"
  end

end
