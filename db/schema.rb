# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_16_115046) do

  create_table "analyses", force: :cascade do |t|
    t.integer "answer_1", null: false
    t.integer "answer_2", null: false
    t.integer "answer_3", null: false
    t.integer "answer_4", null: false
    t.integer "answer_5", null: false
    t.integer "answer_6", null: false
    t.integer "answer_7", null: false
    t.integer "answer_8", null: false
    t.integer "answer_9", null: false
    t.integer "answer_10", null: false
    t.integer "answer_11", null: false
    t.integer "answer_12", null: false
    t.integer "answer_13", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_analyses_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "category_tags", force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "liquor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id", "liquor_id"], name: "index_category_tags_on_category_id_and_liquor_id", unique: true
    t.index ["category_id"], name: "index_category_tags_on_category_id"
    t.index ["liquor_id"], name: "index_category_tags_on_liquor_id"
  end

  create_table "diagnoses", force: :cascade do |t|
    t.float "total_points", null: false
    t.integer "alcohol_status", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_diagnoses_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "liquor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["liquor_id"], name: "index_favorites_on_liquor_id"
    t.index ["user_id", "liquor_id"], name: "index_favorites_on_user_id_and_liquor_id", unique: true
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "liquors", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.integer "percentage"
    t.string "catch_copy"
    t.string "image_url"
    t.string "site_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "uuid", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uuid"], name: "index_users_on_uuid"
  end

  add_foreign_key "category_tags", "categories"
  add_foreign_key "category_tags", "liquors"
  add_foreign_key "favorites", "liquors"
  add_foreign_key "favorites", "users"
end
