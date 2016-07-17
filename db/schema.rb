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

ActiveRecord::Schema.define(version: 20160714191904) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "deadlines", force: :cascade do |t|
    t.date     "initial_date"
    t.date     "final_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "project_id"
    t.integer  "deadlineable_id"
    t.string   "deadlineable_type"
  end

  create_table "issues", force: :cascade do |t|
    t.string   "title"
    t.integer  "type"
    t.text     "description"
    t.integer  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string   "name"
    t.string   "function"
    t.string   "area"
    t.string   "boss"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string   "description"
    t.decimal  "value"
    t.date     "payment_date"
    t.integer  "payment_method"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.date     "birth"
    t.string   "phone"
    t.string   "cpf"
    t.string   "rg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "head"
    t.string   "project_title"
    t.integer  "area"
    t.text     "description"
    t.string   "representant"
    t.integer  "sprints"
    t.integer  "status"
    t.integer  "resources_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "manager_name"
  end

  create_table "resources", force: :cascade do |t|
    t.string   "name"
    t.string   "function"
    t.string   "alocation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "resource_id"
    t.integer  "project_id"
  end

  create_table "sprints", force: :cascade do |t|
    t.date     "initial_date"
    t.date     "final_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "title"
  end

  create_table "tasks", force: :cascade do |t|
    t.text     "description"
    t.integer  "resource_id"
    t.integer  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
