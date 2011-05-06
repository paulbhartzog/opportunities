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

ActiveRecord::Schema.define(:version => 20110503220612) do

  create_table "opportunities", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.text     "description"
    t.date     "startdate"
    t.date     "enddate"
    t.string   "icon"
    t.integer  "importance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_gliders", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "focus_date"
    t.integer  "inital_zoom"
    t.string   "events_url"
    t.text     "legend"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
