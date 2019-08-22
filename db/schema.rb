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

ActiveRecord::Schema.define(version: 2019_08_21_122703) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "address"
    t.string "phone_number"
    t.string "activity"
    t.string "logo"
    t.string "photo_header"
    t.string "photo_description"
    t.string "twitter_url"
    t.string "linkedin_url"
    t.string "github_url"
    t.string "facebook_url"
    t.string "short_description"
    t.string "mission"
    t.string "history"
    t.integer "founded_in"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "zipcode", default: ""
    t.string "website_url", default: ""
    t.string "city", default: ""
  end

  create_table "hierarchy_ranks", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task"
    t.string "description"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_tasks_on_company_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_teams_on_company_id"
  end

  create_table "to_do_lists", force: :cascade do |t|
    t.bigint "task_id"
    t.bigint "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_to_do_lists_on_task_id"
    t.index ["user_id"], name: "index_to_do_lists_on_user_id"
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
    t.string "personal_mail", default: ""
    t.string "corporate_mail", default: ""
    t.string "phone_number", default: ""
    t.string "linkedin_url", default: ""
    t.string "slack_account", default: ""
    t.string "time_zone", default: ""
    t.string "onboarding_progress", default: ""
    t.string "location", default: ""
    t.string "job_title", default: ""
    t.string "department", default: ""
    t.bigint "team_id"
    t.bigint "hierarchy_rank_id"
    t.string "contract_status", default: ""
    t.string "contract_pdf", default: ""
    t.string "avatar", default: ""
    t.string "hobby_1", default: ""
    t.string "hobby_2", default: ""
    t.string "hobby_3", default: ""
    t.bigint "company_id"
    t.string "rules_reglementation_pdf"
    t.string "arrival_at"
    t.boolean "onboarding_status", default: false
    t.float "latitude"
    t.float "longitude"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["hierarchy_rank_id"], name: "index_users_on_hierarchy_rank_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["team_id"], name: "index_users_on_team_id"
  end

  create_table "value_categories", force: :cascade do |t|
    t.string "name"
    t.string "picto_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "values", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.bigint "company_id"
    t.bigint "value_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_values_on_company_id"
    t.index ["value_category_id"], name: "index_values_on_value_category_id"
  end

  add_foreign_key "tasks", "companies"
  add_foreign_key "teams", "companies"
  add_foreign_key "to_do_lists", "tasks"
  add_foreign_key "to_do_lists", "users"
  add_foreign_key "users", "companies"
  add_foreign_key "users", "hierarchy_ranks"
  add_foreign_key "users", "teams"
  add_foreign_key "values", "companies"
  add_foreign_key "values", "value_categories"
end
