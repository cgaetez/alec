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

ActiveRecord::Schema.define(version: 20140423034529) do

  create_table "answers", force: true do |t|
    t.integer  "student_id"
    t.integer  "homework_id"
    t.integer  "page_id"
    t.text     "content"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["homework_id"], name: "index_answers_on_homework_id"
  add_index "answers", ["page_id"], name: "index_answers_on_page_id"
  add_index "answers", ["student_id"], name: "index_answers_on_student_id"

  create_table "comments", force: true do |t|
    t.integer  "student_id"
    t.integer  "homework_id"
    t.integer  "page_id"
    t.integer  "start_at_character"
    t.integer  "end_at_character"
    t.text     "content"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["homework_id"], name: "index_comments_on_homework_id"
  add_index "comments", ["page_id"], name: "index_comments_on_page_id"
  add_index "comments", ["student_id"], name: "index_comments_on_student_id"

  create_table "courses", force: true do |t|
    t.integer  "user_id"
    t.integer  "school_id"
    t.string   "name"
    t.string   "level"
    t.integer  "year"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["school_id"], name: "index_courses_on_school_id"
  add_index "courses", ["user_id"], name: "index_courses_on_user_id"

  create_table "employees", force: true do |t|
    t.integer  "user_id"
    t.integer  "school_id"
    t.string   "relationship"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["school_id"], name: "index_employees_on_school_id"
  add_index "employees", ["user_id"], name: "index_employees_on_user_id"

  create_table "friendships", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.string   "relationship"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friendships", ["friend_id"], name: "index_friendships_on_friend_id"
  add_index "friendships", ["user_id"], name: "index_friendships_on_user_id"

  create_table "homeworks", force: true do |t|
    t.integer  "teacher_id"
    t.integer  "course_id"
    t.string   "activity"
    t.string   "title"
    t.text     "content"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "homeworks", ["course_id"], name: "index_homeworks_on_course_id"
  add_index "homeworks", ["teacher_id"], name: "index_homeworks_on_teacher_id"

  create_table "pages", force: true do |t|
    t.integer  "homework_id"
    t.string   "title"
    t.text     "content"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["homework_id"], name: "index_pages_on_homework_id"

  create_table "schools", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "url"
    t.string   "picture"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.string   "relationship"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subscriptions", ["course_id"], name: "index_subscriptions_on_course_id"
  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id"

  create_table "users", force: true do |t|
    t.integer  "document_id_id"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "picture"
    t.string   "background"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["document_id_id"], name: "index_users_on_document_id_id"

end
