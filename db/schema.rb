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

ActiveRecord::Schema.define(:version => 20131128195329) do

  create_table "comments", :force => true do |t|
    t.string   "goal_instance_id"
    t.string   "comment"
    t.string   "user_id"
    t.string   "timestamp"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "goal_instances", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "is_complete"
    t.integer  "cheer_ons"
    t.integer  "user_id"
    t.integer  "goal_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "goal_instances", ["goal_id"], :name => "index_goal_instances_on_goal_id"
  add_index "goal_instances", ["user_id"], :name => "index_goal_instances_on_user_id"

  create_table "goals", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "goals", ["user_id"], :name => "index_goals_on_user_id"

  create_table "milestones", :force => true do |t|
    t.integer  "goal_instance_id"
    t.string   "description"
    t.string   "duration"
    t.boolean  "is_complete"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "milestones", ["goal_instance_id"], :name => "index_milestones_on_goal_instance_id"

  create_table "users", :force => true do |t|
    t.string   "fb_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["fb_id"], :name => "index_users_on_fb_id"

end
