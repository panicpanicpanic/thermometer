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

ActiveRecord::Schema.define(version: 20131019171735) do

  create_table "brands", force: true do |t|
    t.string   "name"
    t.string   "twitter_handle"
    t.string   "twitter_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweet_metrics", force: true do |t|
    t.integer  "tweet_id"
    t.integer  "tweet_retweets"
    t.integer  "tweet_favs"
    t.integer  "tweet_replies"
    t.integer  "tweet_total_engagements"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweets", force: true do |t|
    t.integer  "brand_id"
    t.string   "tweet_copy"
    t.string   "tweet_url"
    t.datetime "tweet_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tweet_post_id"
    t.integer  "tweet_retweets"
    t.integer  "tweet_favs"
    t.integer  "tweet_total_engagements"
    t.float    "tweet_score"
    t.boolean  "over_indexing",           default: false
    t.boolean  "promoted_tweet"
  end

end
