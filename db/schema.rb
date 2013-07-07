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

ActiveRecord::Schema.define(version: 20130707065709) do

  create_table "assginments", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "worker_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assginments", ["project_id"], name: "index_assginments_on_project_id"
  add_index "assginments", ["worker_id"], name: "index_assginments_on_worker_id"

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "org"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workers", force: true do |t|
    t.string   "dept"
    t.string   "org"
    t.string   "name"
    t.string   "sales_rep"
    t.date     "confirmed_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
