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

ActiveRecord::Schema.define(version: 20170510024821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "moment_id"
    t.integer  "user_id"
    t.index ["moment_id"], name: "index_attendances_on_moment_id", using: :btree
    t.index ["user_id"], name: "index_attendances_on_user_id", using: :btree
  end

  create_table "moments", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.text     "description"
    t.integer  "attendance"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "picture"
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "date"
    t.index ["user_id"], name: "index_moments_on_user_id", using: :btree
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.date     "birthday"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "videos", force: :cascade do |t|
    t.string   "name"
    t.string   "video_file_file_name"
    t.string   "video_file_content_type"
    t.integer  "video_file_file_size"
    t.datetime "video_file_updated_at"
    t.string   "mp4_file_file_name"
    t.string   "mp4_file_content_type"
    t.integer  "mp4_file_file_size"
    t.datetime "mp4_file_updated_at"
    t.string   "webm_file_file_name"
    t.string   "webm_file_content_type"
    t.integer  "webm_file_file_size"
    t.datetime "webm_file_updated_at"
    t.string   "ogg_file_file_name"
    t.string   "ogg_file_content_type"
    t.integer  "ogg_file_file_size"
    t.datetime "ogg_file_updated_at"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.boolean  "published"
    t.integer  "likes"
    t.integer  "user_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["user_id"], name: "index_videos_on_user_id", using: :btree
  end

  add_foreign_key "moments", "users"
  add_foreign_key "videos", "users"
end
