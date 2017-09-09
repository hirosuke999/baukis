# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170909192841) do

  create_table "administrators", force: true do |t|
    t.string   "email",                           null: false, comment: "メールアドレス"
    t.string   "email_for_index",                 null: false, comment: "索引用メールアドレス"
    t.string   "hashed_password",                              comment: "パスワード"
    t.boolean  "suspended",       default: false, null: false, comment: "停止フラグ"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "administrators", ["email_for_index"], name: "index_administrators_on_email_for_index", unique: true, using: :btree

  create_table "staff_members", force: true do |t|
    t.string   "email",                            null: false, comment: "メールアドレス"
    t.string   "email_for_index",                  null: false, comment: "索引用メールアドレス"
    t.string   "family_name",                      null: false, comment: "性"
    t.string   "given_name",                       null: false, comment: "名"
    t.string   "family_name_kana",                 null: false, comment: "性（カナ）"
    t.string   "given_name_kana",                  null: false, comment: "名（カナ）"
    t.string   "hashed_password",                               comment: "パスワード"
    t.date     "start_date",                       null: false, comment: "開始日"
    t.date     "end_date",                                      comment: "終了日"
    t.boolean  "suspended",        default: false, null: false, comment: "停止フラグ"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "staff_members", ["email_for_index"], name: "index_staff_members_on_email_for_index", unique: true, using: :btree
  add_index "staff_members", ["family_name_kana", "given_name_kana"], name: "index_staff_members_on_family_name_kana_and_given_name_kana", using: :btree

end
