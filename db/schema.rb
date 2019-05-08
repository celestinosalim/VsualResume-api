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

ActiveRecord::Schema.define(version: 2019_05_08_013003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.bigint "resume_id"
    t.string "start_date", default: "mm/dd/yyyy"
    t.string "end_date", default: "mm/dd/yyyy"
    t.string "location", default: "Address, City, State, Zip"
    t.string "degree", default: "Degree"
    t.string "university", default: "Institution"
    t.string "description", default: "Studied a variety of ..."
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_educations_on_resume_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.bigint "resume_id"
    t.string "start_date", default: "mm/dd/yyyy"
    t.string "end_date", default: "mm/dd/yyyy"
    t.string "location", default: "Address, City, State, Zip"
    t.string "role", default: "Position"
    t.string "company", default: "Institution"
    t.string "description", default: "Responsible for  ..."
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_experiences_on_resume_id"
  end

  create_table "interpersonals", force: :cascade do |t|
    t.bigint "skill_id"
    t.string "name", default: "Teamwork"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_interpersonals_on_skill_id"
  end

  create_table "others", force: :cascade do |t|
    t.bigint "skill_id"
    t.string "name", default: "Leadership"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_others_on_skill_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "resume_id"
    t.string "name", default: "Name"
    t.integer "age", default: 26
    t.string "location", default: "Address"
    t.string "number", default: "Format: 000-000-0000"
    t.string "profile_picture", default: "https://theimag.org/wp-content/uploads/2015/01/user-icon-png-person-user-profile-icon-20-300x300.png"
    t.string "headline", default: "Able to sit in my chair for extended periods of time without numbness or fatigue."
    t.string "about_me", default: "I am awesome, amazing, beautiful and confident I don’t need someone to make me realize it!"
    t.string "background_image", default: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwcICA0HBwgHBwcHBw0HBwcHBw8ICQcKFREWFhUREx8YKCggGCYlGxMTITEhJSkrLi4uFx8zODMtNygtLjcBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAKgBLAMBIgACEQEDEQH/xAAaAAEAAwEBAQAAAAAAAAAAAAAAAgMEAQUG/8QAGRABAQEBAQEAAAAAAAAAAAAAAAECAxEx/8QAFAEBAAAAAAAAAAAAAAAAAAAAAP/EABQRAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwEAAhEDEQA/APtHYJSAlmLsZQxGjnkE+eWnnhDnlq55BLnhoxlzGV2YDucrJCRKQCRKQjoA6AAAAAAAAAAA4OgIWOWJuWAqsVay0WK9QGXeWbphu1lR0yDzumGbpl6HTLL0yDFuKtRp3lTqAqcSqIOxZmI5i3EBZiNPPKrnGrnkFvPLVzyq55acQE8ZXZiOYskB2RKORIB0AAAAAAAAAAAAAAAHHQEKjYsqNgKdRTvLTYq3AYumWXplv6ZZeuQYOmWfcbOuWbcBm1EVmohYCWYuxFeV/OAu5xr5xRyjXygLucacRVzi/EBPMTjkSgOxJx0AAAAAAAAAAAAAAAAAAHHKk5QQsV6i2q9QGfcZusbNxm6QGHrGTpG/rGPpAZNxXYu3FVgJ4aOcUYaecBp5Rr5Rm5Rr5QF+IvyqxF2QTiURicAjoAAAAAAAAAAAAAAAAAAAOOuUHKhpOo0FO4z9I06UdIDH1jH1jd1jJ1gMXSKa0dIooJ4aeTPhp5A1cmvmy8mvkDRhdlVhbkE4kjEoDoAAAAAAAAAAAAAAAAAAAAAI1Gp1Cgr0o20aUbBk6snVs6snUGPoorR0UX6CWGnmzYaeQNfJr5MnJr5g04W5U4XZBOJRGJA6AAAAAAAAAAAAAAAAAAAAADlQqVRoIaUbXaU7Bl6snVr6snUGTqoq/oov0HcNPNlw0c6DbyrXyrFyrXyoNWF2VGKuyC2JRCJQEggAAAAAAAAAAAAAAAAAAA5XXAcqNSqFBDSja3dUdKDP1Y+tautZOtBm6KKt6VTQMNHOs2V+KDZzrXzrDzrXzoNuKvzWXnV+KC+JxVmrICTrkdAAAAAAAAAAAAAAAAAAAcHKDlQ1Uqr1QQ3WbpV26zdKCjpWTrWjrWTpQU7qmrN1VQM1biqItzQa+daudYedaeegb+emjFYuemnnoGrNWSqM1bmgtjqEqUBIcdAAAAAAAAAAAAAAABwCo0qNoOWq9VLVU7oIdKy9NLemmXpoFXSsvSremmfdBVuq7UtVACJ5quJSg0YrTz0x5q/Ggbuemnnpg56aeegbsaXZrJz0vxoGiVKVVmpygsjqEqUoJDjoAAAAAAAAAAA4AOWlqNoFqFpar1Qc1VG9J70z9NAh00y9NLOmmbpoFfTTPup7qrVBG1ErgDsAE81bigC/npp56cAacaaMaAF2dLc0ATlSlAHfXfQB0AHQAAAAAcABz1y0ARtRtAENaU70AKN7Z+mgBm6aZ96AFOqqtAEQAf/Z"
    t.string "profile_email", default: "example@gmail.com"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_profiles_on_resume_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "resume_id"
    t.string "name", default: "Name"
    t.string "url", default: "https://myprojecturl.com"
    t.string "image", default: "https://organicthemes.com/wp-content/uploads/2013/10/website-construction.jpg"
    t.string "description", default: "Formally written declaration of the project and its idea and context to explain the goals and objectives to be reached"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_projects_on_resume_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "template", default: 1
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
    t.string "name", default: "MySocialMedia"
    t.string "logo", default: "https://www.freelogodesign.org/Content/img/logo-ex-7.png"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
    t.index ["resume_id"], name: "index_social_media_on_resume_id"
  end

  create_table "tools", force: :cascade do |t|
    t.bigint "skill_id"
    t.string "name", default: "GitHub"
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
    t.string "avatar", default: "https://theimag.org/wp-content/uploads/2015/01/user-icon-png-person-user-profile-icon-20-300x300.png"
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
