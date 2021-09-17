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

ActiveRecord::Schema.define(version: 2021_09_17_165218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "staff_id", null: false
    t.bigint "report_id"
    t.bigint "condition_id"
    t.string "place"
    t.text "place_remarks"
    t.integer "salary"
    t.string "koutsuhi"
    t.text "money_remarks"
    t.date "start", comment: "開始日"
    t.date "finish", comment: "終了日"
    t.string "first_shift", comment: "初日シフト"
    t.string "salary_kinds", comment: "日給or時給"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_admins_on_company_id"
    t.index ["condition_id"], name: "index_admins_on_condition_id"
    t.index ["report_id"], name: "index_admins_on_report_id"
    t.index ["staff_id"], name: "index_admins_on_staff_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "name_kana"
    t.string "product"
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "fee", comment: "手数料"
    t.integer "o_fee", comment: "事務手数料"
    t.string "closing", comment: "締日"
    t.string "after", comment: "翌or当月"
    t.string "payment", comment: "振込日"
    t.string "person", comment: "担当"
    t.string "p_tel", comment: "電話番号"
    t.string "p_tel2", comment: "電話番号2"
    t.string "p_fax", comment: "FAX"
    t.string "p_email", comment: "アドレス"
    t.text "remarks", comment: "備考"
  end

  create_table "conditions", force: :cascade do |t|
    t.string "holiday", comment: "休日"
    t.integer "w_hours", comment: "実働"
    t.integer "w_rest", comment: "休憩"
    t.integer "w_total", comment: "拘束時間"
    t.string "over", comment: "所定労働時間超"
    t.string "test_period", comment: "試用期間"
    t.time "start_time", comment: "始業時間"
    t.time "finish_time", comment: "就業時間"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.time "shift_start"
    t.time "shift_finish"
    t.string "shift_umu"
    t.text "remarks"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "days"
    t.integer "times"
    t.integer "c_costs"
    t.integer "shotei"
    t.integer "choka"
    t.text "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "name_kanak"
    t.text "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "admins", "companies"
  add_foreign_key "admins", "conditions"
  add_foreign_key "admins", "reports"
  add_foreign_key "admins", "staffs"
end
