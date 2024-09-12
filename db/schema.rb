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

ActiveRecord::Schema[7.2].define(version: 2024_09_12_010213) do
  create_table "applications", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "email"
    t.string "phone"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.string "funeral_home_name"
    t.string "funeral_home_city"
    t.string "name_of_deceased"
    t.integer "purchase_amount"
    t.boolean "credit_check_authorized"
    t.boolean "electronic_disclosures_authorized"
    t.string "bank_name"
    t.string "bank_account_number"
    t.string "bank_routing_number"
    t.boolean "automatic_withdrawal_authorized"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funding_applications", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "email"
    t.string "phone"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.string "funeral_home_name"
    t.string "funeral_home_city"
    t.string "name_of_deceased"
    t.integer "purchase_amount"
    t.boolean "credit_check_authorized"
    t.boolean "electronic_disclosures_authorized"
    t.string "bank_name"
    t.string "bank_account_number"
    t.string "bank_routing_number"
    t.boolean "automatic_withdrawal_authorized"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_funding_applications_on_user_id"
  end

  create_table "funerals", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.datetime "date_of_birth"
    t.string "email"
    t.string "phone"
    t.string "street_address"
    t.string "apt_or_suite_number"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "funeral_home_name"
    t.string "funeral_home_city"
    t.string "name_of_deceased"
    t.integer "purchase_amount"
    t.boolean "credit_check_authorized"
    t.boolean "electronic_disclosures_authorized"
    t.string "bank_name"
    t.string "bank_account_number"
    t.string "bank_routing_number"
    t.boolean "automatic_withdrawal_authorized"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  add_foreign_key "funding_applications", "users"
end
