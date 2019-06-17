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

ActiveRecord::Schema.define(version: 20190617024031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bill_payments", force: :cascade do |t|
    t.decimal  "amount_paid",         precision: 10, scale: 2
    t.date     "payment_date"
    t.string   "confirmation_number"
    t.integer  "bill_id"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "billing_accounts", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bills", force: :cascade do |t|
    t.date     "due_date"
    t.decimal  "minimum_amount_due", precision: 10, scale: 2
    t.integer  "billing_account_id"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "payment_method_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_method_institutions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_active"
    t.integer  "payment_method_institution_id"
    t.integer  "payment_method_category_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
