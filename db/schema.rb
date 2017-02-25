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

ActiveRecord::Schema.define(version: 20170224131915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string   "full_name"
    t.datetime "date_of_birth"
    t.boolean  "allergic"
    t.boolean  "medication"
    t.string   "photo_gumshield"
    t.string   "photo_no_gumshield"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.text     "allergy_note"
    t.text     "medication_note"
    t.string   "tetanus"
    t.string   "school"
    t.string   "gp_name"
    t.string   "gp_address"
    t.string   "pog1_name"
    t.string   "pog1_address"
    t.string   "pog1_phone1"
    t.string   "pog1_phone2"
    t.string   "pog2_name"
    t.string   "pog2_address"
    t.string   "pog2_phone1"
    t.string   "pog2_phone2"
    t.string   "ec_name"
    t.string   "ec_phone1"
    t.string   "ec_phone2"
  end

end
