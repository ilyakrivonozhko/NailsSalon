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

ActiveRecord::Schema[7.0].define(version: 2023_09_07_074815) do
  create_table "appointments", force: :cascade do |t|
    t.string "user_name", null: false
    t.string "user_phone", null: false
    t.integer "window_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["window_id"], name: "index_appointments_on_window_id", unique: true
  end

  create_table "masters", force: :cascade do |t|
    t.string "name", null: false
    t.text "info", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_masters_on_email", unique: true
    t.index ["name"], name: "index_masters_on_name", unique: true
  end

  create_table "windows", force: :cascade do |t|
    t.datetime "time", null: false
    t.integer "master_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["master_id"], name: "index_windows_on_master_id"
  end

  add_foreign_key "appointments", "windows"
  add_foreign_key "windows", "masters"
end
