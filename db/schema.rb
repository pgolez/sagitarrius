# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_08_072516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_classes", force: :cascade do |t|
    t.string "code", null: false
    t.integer "max_enrollment", default: 0, null: false
    t.string "status", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "course_id", null: false
    t.bigint "room_id", null: false
    t.bigint "semester_id", null: false
    t.bigint "schedule_id"
    t.index ["course_id"], name: "index_course_classes_on_course_id"
    t.index ["room_id"], name: "index_course_classes_on_room_id"
    t.index ["schedule_id"], name: "index_course_classes_on_schedule_id"
    t.index ["semester_id"], name: "index_course_classes_on_semester_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "code", null: false
    t.string "descriptive_title", limit: 255
    t.integer "units", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.boolean "monday", default: false
    t.boolean "tuesday", default: false
    t.boolean "wednesday", default: false
    t.boolean "thurdady", default: false
    t.boolean "friday", default: false
    t.boolean "saturday", default: false
    t.boolean "sunday", default: false
    t.integer "time_start", null: false
    t.integer "time_end", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "course_classes", "courses"
  add_foreign_key "course_classes", "rooms"
  add_foreign_key "course_classes", "schedules"
  add_foreign_key "course_classes", "semesters"
end
