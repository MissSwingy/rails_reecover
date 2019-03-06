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

ActiveRecord::Schema.define(version: 2019_03_06_171245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "column"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "answer"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "attempts", force: :cascade do |t|
    t.string "result"
    t.bigint "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["survey_id"], name: "index_attempts_on_survey_id"
    t.index ["user_id"], name: "index_attempts_on_user_id"
  end

  create_table "careers", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.bigint "personality_riasec_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "salary"
    t.index ["personality_riasec_id"], name: "index_careers_on_personality_riasec_id"
  end

  create_table "personality_riasecs", force: :cascade do |t|
    t.string "name"
    t.string "avatar_f"
    t.string "avatar_m"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "points_forts"
    t.text "points_faibles"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "question"
    t.string "gender"
    t.index ["survey_id"], name: "index_questions_on_survey_id"
  end

  create_table "success_profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "sport"
    t.string "bio"
    t.string "photo"
    t.string "website"
    t.string "video"
    t.bigint "personality_riasec_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personality_riasec_id"], name: "index_success_profiles_on_personality_riasec_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "training_centers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "category"
    t.string "email"
    t.string "telephone"
    t.string "website"
    t.float "latitude"
    t.float "longitude"
    t.bigint "career_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "postal_code"
    t.index ["career_id"], name: "index_training_centers_on_career_id"
  end

  create_table "user_answers", force: :cascade do |t|
    t.bigint "answer_id"
    t.bigint "user_id"
    t.bigint "attempt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_user_answers_on_answer_id"
    t.index ["attempt_id"], name: "index_user_answers_on_attempt_id"
    t.index ["user_id"], name: "index_user_answers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "sport"
    t.string "bio"
    t.string "address"
    t.string "photo"
    t.float "latitude"
    t.float "longitude"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_personalities", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "career_id"
    t.bigint "personality_riasec_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["career_id"], name: "index_users_personalities_on_career_id"
    t.index ["personality_riasec_id"], name: "index_users_personalities_on_personality_riasec_id"
    t.index ["user_id"], name: "index_users_personalities_on_user_id"
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "attempts", "surveys"
  add_foreign_key "attempts", "users"
  add_foreign_key "careers", "personality_riasecs"
  add_foreign_key "questions", "surveys"
  add_foreign_key "success_profiles", "personality_riasecs"
  add_foreign_key "training_centers", "careers"
  add_foreign_key "user_answers", "answers"
  add_foreign_key "user_answers", "attempts"
  add_foreign_key "user_answers", "users"
  add_foreign_key "users_personalities", "careers"
  add_foreign_key "users_personalities", "personality_riasecs"
  add_foreign_key "users_personalities", "users"
end
