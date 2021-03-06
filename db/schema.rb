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

ActiveRecord::Schema.define(version: 20161005173328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "events", force: :cascade do |t|
    t.datetime "date"
    t.string   "content"
    t.string   "location"
    t.integer  "importance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "post_id"
    t.index ["post_id"], name: "index_events_on_post_id", using: :btree
  end

  create_table "members", force: :cascade do |t|
    t.string  "first_name",                   null: false
    t.string  "last_name",                    null: false
    t.text    "bio"
    t.string  "email_public"
    t.boolean "is_admin",     default: false, null: false
  end

  create_table "paralax_images", force: :cascade do |t|
    t.string "url"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "body"
    t.boolean  "is_published",   default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "type"
    t.boolean  "is_slider_post", default: false
    t.datetime "published_at"
  end

  create_table "settings", force: :cascade do |t|
    t.string "description"
    t.jsonb  "value",       default: {}, null: false
    t.index ["value"], name: "index_settings_on_value", using: :btree
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_taggings_on_post_id", using: :btree
    t.index ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "is_main_category", default: false, null: false
    t.boolean  "only_search_tag",  default: false, null: false
    t.index ["is_main_category"], name: "index_tags_on_is_main_category", using: :btree
  end

  add_foreign_key "taggings", "posts"
  add_foreign_key "taggings", "tags"
end
