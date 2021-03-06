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

ActiveRecord::Schema.define(version: 20160903092307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.text    "name"
    t.text    "top_facts"
    t.text    "highlights"
    t.text    "image"
    t.integer "country_id"
  end

  create_table "cities_tours", force: :cascade do |t|
    t.integer "tour_id"
    t.integer "city_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.text   "top_facts"
    t.text   "highlights"
    t.text   "weather"
    t.text   "image"
  end

  create_table "tours", force: :cascade do |t|
    t.text    "name"
    t.text    "theme"
    t.text    "duration"
    t.text    "top_facts"
    t.text    "highlights"
    t.text    "image"
    t.integer "price"
    t.date    "start_date"
    t.date    "end_date"
  end

  create_table "tours_users", force: :cascade do |t|
    t.integer "tour_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "title"
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.date    "dob"
    t.string  "gender"
    t.integer "contact_number"
    t.string  "address_line_1"
    t.string  "address_line_2"
    t.string  "suburb"
    t.string  "state"
    t.string  "postcode"
    t.text    "diet"
    t.text    "medical_condition"
    t.boolean "admin",             default: false
    t.text    "password_digest"
  end

end
