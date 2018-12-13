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

ActiveRecord::Schema.define(version: 2018_12_13_173012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.bigint "resume_id"
    t.string "start_date"
    t.string "end_date"
    t.string "location"
    t.string "degree"
    t.string "university"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_educations_on_resume_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.bigint "resume_id"
    t.string "start_date"
    t.string "end_date"
    t.string "location"
    t.string "role"
    t.string "company"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_experiences_on_resume_id"
  end

  create_table "interpersonals", force: :cascade do |t|
    t.bigint "skill_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_interpersonals_on_skill_id"
  end

  create_table "others", force: :cascade do |t|
    t.bigint "skill_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_others_on_skill_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "resume_id"
    t.string "name"
    t.integer "age"
    t.string "location"
    t.string "number"
    t.string "profile_picture"
    t.string "headline"
    t.string "about_me"
    t.string "background_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_profiles_on_resume_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "resume_id"
    t.string "name"
    t.string "url"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_projects_on_resume_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_resumes_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.bigint "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_skills_on_resume_id"
  end

  create_table "social_media", force: :cascade do |t|
    t.bigint "resume_id"
    t.string "name"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_social_media_on_resume_id"
  end

  create_table "tools", force: :cascade do |t|
    t.bigint "skill_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_tools_on_skill_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest"
    t.string "role", default: "user", null: false
    t.datetime "last_login"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

  add_foreign_key "educations", "resumes"
  add_foreign_key "experiences", "resumes"
  add_foreign_key "interpersonals", "skills"
  add_foreign_key "others", "skills"
  add_foreign_key "profiles", "resumes"
  add_foreign_key "projects", "resumes"
  add_foreign_key "resumes", "users"
  add_foreign_key "skills", "resumes"
  add_foreign_key "social_media", "resumes"
  add_foreign_key "tools", "skills"
end
