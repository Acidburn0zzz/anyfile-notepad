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

ActiveRecord::Schema.define(:version => 20131028161420) do

  create_table "columns", :force => true do |t|
    t.integer  "page_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "extensions", :force => true do |t|
    t.string   "name"
    t.integer  "syntax_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mime_types", :force => true do |t|
    t.string   "type_name"
    t.boolean  "integrated", :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "syntax_id"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "column_id"
    t.integer  "position"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "site_contents", :force => true do |t|
    t.string   "key"
    t.string   "value", :default => ""
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "syntaxes", :force => true do |t|
    t.string   "display_name"
    t.string   "ace_js_mode"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end