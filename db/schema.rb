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

ActiveRecord::Schema.define(version: 2019_06_06_043458) do

  create_table "flights", force: :cascade do |t|
    t.datetime "departure"
    t.datetime "arrival"
    t.string "destination"
    t.decimal "baggage_allowance"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seat_classes", force: :cascade do |t|
    t.string "class_name"
    t.integer "price"
    t.boolean "food_service"
    t.string "seat_type"
    t.integer "leg_room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer "flight_id"
    t.string "name"
    t.decimal "baggage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
