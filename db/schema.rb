ActiveRecord::Schema.define(version: 2018_08_22_021516) do

  create_table "orders", force: :cascade do |t|
    t.integer "shopper_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shopper_id"], name: "index_orders_on_shopper_id"
  end

  create_table "product_orders", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_product_orders_on_order_id"
    t.index ["product_id"], name: "index_product_orders_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "food_type"
  end

  create_table "shoppers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "card_number"
    t.string "expiration_month"
    t.integer "expiration_year"
    t.integer "cvv"
    t.string "password_digest"
  end

end
