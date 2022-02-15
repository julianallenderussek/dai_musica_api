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

ActiveRecord::Schema[7.0].define(version: 2022_02_14_162752) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "payments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "status"
    t.string "date"
    t.string "payment_type"
    t.string "received_by"
    t.string "account"
    t.string "type_of_payment"
    t.integer "amount"
    t.string "type_of_expense"
    t.uuid "payor"
    t.uuid "payee"
    t.string "image_receipt"
    t.uuid "school_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_payments_on_school_id"
  end

  create_table "profesors", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "status"
    t.string "instrument"
    t.string "phone_number"
    t.string "country"
    t.string "city"
    t.uuid "school_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_profesors_on_school_id"
  end

  create_table "schools", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "status"
    t.string "modality"
    t.string "instrument"
    t.string "marketing"
    t.string "country"
    t.string "city"
    t.string "phone_number"
    t.uuid "school_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "profesor_id", null: false
    t.uuid "vendor_id", null: false
    t.index ["profesor_id"], name: "index_students_on_profesor_id"
    t.index ["school_id"], name: "index_students_on_school_id"
    t.index ["vendor_id"], name: "index_students_on_vendor_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "email"
    t.bigint "students_id"
    t.uuid "school_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_vendors_on_school_id"
    t.index ["students_id"], name: "index_vendors_on_students_id"
  end

  add_foreign_key "payments", "schools"
  add_foreign_key "profesors", "schools"
  add_foreign_key "students", "schools"
  add_foreign_key "vendors", "schools"
end
