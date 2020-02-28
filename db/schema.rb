

ActiveRecord::Schema.define(version: 20200228161159) do

  create_table "heroine_powers", force: :cascade do |t|
    t.integer "heroine_id"
    t.integer "power_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "heroines", force: :cascade do |t|
    t.string "name"
    t.string "super_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "powers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
