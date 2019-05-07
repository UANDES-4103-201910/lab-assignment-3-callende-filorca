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

ActiveRecord::Schema.define(version: 2019_05_02_143321) do

  create_table "admin_profiles", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "type"
    t.string "lastname"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.integer "admin_profile_id"
    t.integer "super_admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_profile_id"], name: "index_admins_on_admin_profile_id"
    t.index ["super_admin_id"], name: "index_admins_on_super_admin_id"
  end

  create_table "blacklists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.string "link"
    t.string "picture"
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "gps"
    t.string "title"
    t.string "description"
    t.string "location"
    t.string "country"
    t.string "status"
    t.string "city"
    t.string "files"
    t.string "state"
    t.integer "wall_id"
    t.integer "user_id"
    t.integer "admin_id"
    t.integer "super_admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_posts_on_admin_id"
    t.index ["super_admin_id"], name: "index_posts_on_super_admin_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
    t.index ["wall_id"], name: "index_posts_on_wall_id"
  end

  create_table "super_admins", force: :cascade do |t|
    t.integer "admin_profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_profile_id"], name: "index_super_admins_on_admin_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "picture"
    t.string "location"
    t.string "name"
    t.string "biography"
    t.string "password"
    t.string "email"
    t.string "city"
    t.string "country"
    t.string "lastname"
    t.integer "blacklist_id"
    t.integer "admin_id"
    t.integer "super_admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_users_on_admin_id"
    t.index ["blacklist_id"], name: "index_users_on_blacklist_id"
    t.index ["super_admin_id"], name: "index_users_on_super_admin_id"
  end

  create_table "walls", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_walls_on_user_id"
  end

end
