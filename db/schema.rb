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

ActiveRecord::Schema.define(version: 20140601071307) do

  create_table "documents", force: true do |t|
    t.string   "title"
    t.string   "date"
    t.text     "contents"
    t.text     "sent1"
    t.text     "sent2"
    t.text     "sent3"
    t.text     "sent4"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image1"
    t.text     "image2"
    t.text     "image3"
    t.text     "image4"
  end

  create_table "products", force: true do |t|
    t.string   "title"
    t.string   "date"
    t.text     "contents"
    t.text     "sent1"
    t.text     "sent2"
    t.text     "sent3"
    t.text     "sent4"
    t.text     "image1"
    t.text     "image2"
    t.text     "image3"
    t.text     "image4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
