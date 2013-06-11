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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130611205138) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "pop_size"
    t.text     "fun_fact"
    t.text     "airport"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.text     "match"
    t.time     "time"
    t.date     "date"
    t.string   "location"
    t.integer  "stadium_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games_itineraries", :id => false, :force => true do |t|
    t.integer "game_id"
    t.integer "itinerary_id"
  end

  create_table "itineraries", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stadia", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "capacity"
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "itinerary_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "email"
  end

end
