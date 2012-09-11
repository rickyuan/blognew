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

ActiveRecord::Schema.define(:version => 20120808125311) do

  create_table "actors", :force => true do |t|
    t.string   "cname"
    t.string   "oname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "ename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crews", :force => true do |t|
    t.string   "cname"
    t.string   "oname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "movie_id"
    t.integer  "director_id"
    t.integer  "actor_id"
  end

  create_table "crews_movies", :id => false, :force => true do |t|
    t.integer "crew_id"
    t.integer "movie_id"
  end

  create_table "directors", :force => true do |t|
    t.string   "cname"
    t.string   "oname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", :force => true do |t|
    t.string   "cname"
    t.string   "ename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres_movies", :id => false, :force => true do |t|
    t.integer "genre_id"
    t.integer "movie_id"
  end

  create_table "movies", :force => true do |t|
    t.string   "cname"
    t.string   "oname"
    t.string   "screenshot"
    t.text     "review"
    t.string   "location"
    t.date     "releasedate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "renyuans", :force => true do |t|
    t.integer  "movie_id"
    t.integer  "director_id"
    t.integer  "actor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reslinks", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
