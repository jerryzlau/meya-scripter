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

ActiveRecord::Schema.define(version: 20180217011334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buttons", force: :cascade do |t|
    t.integer "property_id", null: false
    t.integer "flow_id"
    t.string "transition_id"
    t.string "text", null: false
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flows", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_flows_on_name", unique: true
  end

  create_table "properties", force: :cascade do |t|
    t.integer "state_id", null: false
    t.string "text"
    t.string "output"
    t.string "key"
    t.string "scope"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.integer "flow_id", null: false
    t.string "component"
    t.boolean "return"
    t.string "name", null: false
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transitions", force: :cascade do |t|
    t.integer "state_id", null: false
    t.string "key", null: false
    t.string "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
