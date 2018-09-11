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

ActiveRecord::Schema.define(version: 0) do

  create_table "follow", primary_key: ["user_id", "target_id"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "user_id", limit: 20, null: false
    t.string "target_id", limit: 20, null: false
  end

  create_table "gender", primary_key: "gender_id", id: :string, limit: 1, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "gender_name", limit: 30
  end

  create_table "good", primary_key: ["user_id", "post_id", "image_id"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "user_id", limit: 20, null: false
    t.string "post_id", limit: 10, null: false
    t.string "image_id", limit: 10, null: false
    t.string "good_id", limit: 10, null: false
  end

  create_table "image", primary_key: ["user_id", "post_id", "image_id"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "user_id", limit: 20, null: false
    t.string "post_id", limit: 10, null: false
    t.string "image_id", limit: 1, null: false
    t.string "image_url", limit: 31, null: false
    t.string "s_genru_id", limit: 10, null: false
    t.integer "good_count", null: false
  end

  create_table "l_genru", primary_key: "l_genru_id", id: :string, limit: 10, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "l_genru_name", limit: 30, null: false
    t.index ["l_genru_name"], name: "l_genru_name", unique: true
  end

  create_table "m_genru", primary_key: "m_genru_id", id: :string, limit: 10, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "m_genru_name", limit: 30, null: false
    t.string "l_genru_id", limit: 10, null: false
    t.index ["m_genru_name"], name: "m_genru_name", unique: true
  end

  create_table "s_genru", primary_key: "s_genru_id", id: :string, limit: 10, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "s_genru_name", limit: 30, null: false
    t.string "l_genru_id", limit: 10, null: false
    t.string "m_genru_id", limit: 10
    t.index ["s_genru_name"], name: "s_genru_name", unique: true
  end

  create_table "member", primary_key: "user_id", id: :string, limit: 20, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "password", limit: 100, null: false
    t.string "mail_address", limit: 100, null: false
    t.string "account_name", limit: 200, null: false
    t.date "birth_day", null: false
    t.string "gender_id", limit: 1, null: false
    t.date "last_login"
    t.string "ip_address", limit: 17
    t.string "register_day", limit: 50, null: false
    t.string "profile", limit: 800
    t.string "profile_image", limit: 20
    t.index ["account_name"], name: "account_name", unique: true
    t.index ["mail_address"], name: "mail_address", unique: true
  end

  create_table "post", primary_key: ["user_id", "post_id"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "user_id", limit: 20, null: false
    t.string "post_id", limit: 10, null: false
    t.string "title", limit: 200, null: false
    t.date "date", null: false
    t.integer "bat_count", null: false
  end

  create_table "ranking", primary_key: "ranking", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "user_id", limit: 20, null: false
    t.string "post_id", limit: 10, null: false
    t.string "image_id", limit: 10, null: false
  end



  create_table "signup", primary_key: "mail_address", id: :string, limit: 100, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "checker", limit: 100, null: false
    t.datetime "date", null: false
  end

end
