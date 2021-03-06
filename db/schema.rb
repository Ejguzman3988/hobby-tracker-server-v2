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

ActiveRecord::Schema.define(version: 2021_12_02_135707) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "daily_stats", force: :cascade do |t|
    t.integer "total_restricted_time", default: 0
    t.integer "non_allotted_time", default: 86400
    t.integer "tracked_time", default: 86400
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "current_day"
    t.integer "total_time", default: 0
    t.index ["user_id"], name: "index_daily_stats_on_user_id"
  end

  create_table "intervals", force: :cascade do |t|
    t.integer "timer_id", null: false
    t.integer "total_time", default: 0
    t.date "current_day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "daily_stat_id"
    t.datetime "time_started"
    t.datetime "time_ended"
    t.string "status"
    t.index ["daily_stat_id"], name: "index_intervals_on_daily_stat_id"
    t.index ["timer_id"], name: "index_intervals_on_timer_id"
  end

  create_table "restricted_times", force: :cascade do |t|
    t.string "name"
    t.integer "total_time", default: 0
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_restricted_times_on_user_id"
  end

  create_table "timers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "category_id", null: false
    t.string "name"
    t.string "description"
    t.integer "total_time", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_timers_on_category_id"
    t.index ["user_id"], name: "index_timers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "theme"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "timezone"
    t.string "email"
  end

  add_foreign_key "daily_stats", "users"
  add_foreign_key "intervals", "daily_stats"
  add_foreign_key "intervals", "timers"
  add_foreign_key "restricted_times", "users"
  add_foreign_key "timers", "categories"
  add_foreign_key "timers", "users"
end
