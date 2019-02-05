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

ActiveRecord::Schema.define(version: 2019_02_05_171949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "cuisine"
    t.integer "calories"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.datetime "date"
    t.bigint "food_id"
    t.bigint "breakfast_id"
    t.bigint "lunch_id"
    t.bigint "dinner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["breakfast_id"], name: "index_plans_on_breakfast_id"
    t.index ["dinner_id"], name: "index_plans_on_dinner_id"
    t.index ["food_id"], name: "index_plans_on_food_id"
    t.index ["lunch_id"], name: "index_plans_on_lunch_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "plans", "foods"
  add_foreign_key "plans", "foods", column: "breakfast_id"
  add_foreign_key "plans", "foods", column: "dinner_id"
  add_foreign_key "plans", "foods", column: "lunch_id"
end
