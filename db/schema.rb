ActiveRecord::Schema.define(version: 2021_03_04_072741) do

  create_table "labelings", force: :cascade do |t|
    t.integer "post_id"
    t.integer "label_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["label_id"], name: "index_labelings_on_label_id"
    t.index ["post_id"], name: "index_labelings_on_post_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "sex"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
