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

ActiveRecord::Schema.define(version: 20170129185750) do

  create_table "addrs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "address"
    t.integer  "isdefault"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adminlogs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "processcode_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "login"
    t.string   "password_digest"
    t.string   "auth"
    t.integer  "state"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "busadmins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "officialaccount_id"
    t.string   "name"
    t.string   "login"
    t.string   "password_digest"
    t.integer  "state"
    t.string   "auth"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "goods", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "officialaccount_id"
    t.string   "goodsname"
    t.float    "price",              limit: 24
    t.text     "goodsdetail",        limit: 65535
    t.float    "secondpriceratio",   limit: 24
    t.float    "firstprofitratio",   limit: 24
    t.float    "secondprofitratio",  limit: 24
    t.float    "thirdprofitratio",   limit: 24
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "officialaccounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "officialaccount"
    t.string   "apiid"
    t.string   "company"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "officialusers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "officialaccount_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "orderdetails", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "good_id"
    t.integer  "order_id"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "officialuser_id"
    t.integer  "ordernumber"
    t.float    "paymentprice",    limit: 24
    t.integer  "paymentstate"
    t.integer  "deliverstate"
    t.string   "deliver"
    t.string   "delivernumber"
    t.integer  "receivestate"
    t.datetime "receivedate"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "processcodes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "process"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "systemlogs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "processcode_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "userlogs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "processcode_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "wechat"
    t.string   "phone"
    t.string   "phonevalidate"
    t.string   "password_degest"
    t.string   "token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
