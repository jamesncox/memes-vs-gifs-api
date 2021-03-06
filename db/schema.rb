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

ActiveRecord::Schema.define(version: 2020_03_11_005648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "caption_joins", force: :cascade do |t|
    t.integer "caption_id"
    t.integer "captionable_id"
    t.string "captionable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["captionable_id", "captionable_type"], name: "index_caption_joins_on_captionable_id_and_captionable_type"
  end

  create_table "captions", force: :cascade do |t|
    t.text "text"
    t.string "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gifs", force: :cascade do |t|
    t.string "gif_id"
    t.string "gif_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
  end

  create_table "memes", force: :cascade do |t|
    t.integer "meme_id"
    t.string "meme_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
