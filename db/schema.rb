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

ActiveRecord::Schema.define(version: 20170323190953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breeds", force: :cascade do |t|
    t.string   "name",       limit: 120, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.integer  "breed_id"
    t.string   "dog_name",      limit: 120, null: false
    t.integer  "gender",                    null: false
    t.string   "owner_name",    limit: 120, null: false
    t.string   "onwer_phone_1", limit: 14,  null: false
    t.string   "owner_phone_2", limit: 14
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "histories", force: :cascade do |t|
    t.integer  "dog_id"
    t.integer  "care"
    t.string   "user",        limit: 120, null: false
    t.text     "description",             null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["dog_id"], name: "index_histories_on_dog_id", using: :btree
  end

  add_foreign_key "dogs", "breeds", name: "fk_dogs_breeds"
  add_foreign_key "histories", "dogs"
end
