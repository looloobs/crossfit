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

ActiveRecord::Schema.define(:version => 20120510173032) do

  create_table "exercises", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "body"
    t.string   "body_html"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "girls", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "heros", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lifts", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "body"
    t.string   "body_html"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "moms", :force => true do |t|
    t.string   "name"
    t.string   "kid"
    t.string   "because"
    t.string   "word_one"
    t.string   "word_two"
    t.string   "word_three"
    t.string   "year"
    t.string   "change"
    t.text     "story",      :limit => 255
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "phrases", :force => true do |t|
    t.string   "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "name"
    t.string   "affiliate"
    t.string   "link"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "body_html"
    t.string   "link_html"
    t.string   "body"
    t.string   "small"
    t.string   "small_html"
  end

end
