# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_10_22_050621) do
  create_table "answers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "question_id", null: false
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "attachments", force: :cascade do |t|
    t.string "parent_id"
    t.integer "user_id", null: false
    t.integer "answer_id", null: false
    t.integer "media_id", null: false
    t.string "element_id"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_attachments_on_answer_id"
    t.index ["media_id"], name: "index_attachments_on_media_id"
    t.index ["user_id"], name: "index_attachments_on_user_id"
  end

  create_table "chapters", force: :cascade do |t|
    t.string "title"
    t.integer "order"
    t.integer "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "user_id", null: false
    t.integer "moment_id", null: false
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["moment_id"], name: "index_comments_on_moment_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "emergencies", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "contact"
    t.string "email"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_emergencies_on_user_id"
  end

  create_table "media", force: :cascade do |t|
    t.string "parent_id"
    t.datetime "timestamp"
    t.string "image_url"
    t.string "video_url"
    t.float "media_size_megabytes"
    t.boolean "is_video"
    t.integer "moment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["moment_id"], name: "index_media_on_moment_id"
  end

  create_table "moments", force: :cascade do |t|
    t.string "title"
    t.integer "order"
    t.integer "chapter_id", null: false
    t.integer "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_moments_on_chapter_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.datetime "timestamp"
    t.string "message"
    t.string "title"
    t.string "story_id"
    t.string "story_name"
    t.string "invite_code"
    t.string "story_image_url"
    t.boolean "is_read"
    t.boolean "is_story_joined"
    t.string "redirect_url"
    t.string "moment_id"
    t.integer "from_user_id", null: false
    t.integer "to_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["from_user_id"], name: "index_notifications_on_from_user_id"
    t.index ["to_user_id"], name: "index_notifications_on_to_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "chapter_id", null: false
    t.integer "story_id", null: false
    t.string "title"
    t.datetime "timestamp"
    t.string "to_user_id"
    t.string "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_questions_on_chapter_id"
    t.index ["story_id"], name: "index_questions_on_story_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "reactions", force: :cascade do |t|
    t.string "kind"
    t.integer "user_id", null: false
    t.integer "moment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["moment_id"], name: "index_reactions_on_moment_id"
    t.index ["user_id"], name: "index_reactions_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.string "relation"
    t.integer "with_user"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_relationships_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "name"
    t.string "user_id"
    t.string "email"
    t.string "reason"
    t.string "reported_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shared_urls", force: :cascade do |t|
    t.string "url"
    t.boolean "is_ready"
    t.integer "chapter_id", null: false
    t.integer "story_id", null: false
    t.datetime "timestamp"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_shared_urls_on_chapter_id"
    t.index ["story_id"], name: "index_shared_urls_on_story_id"
    t.index ["user_id"], name: "index_shared_urls_on_user_id"
  end

  create_table "storage_statistics", force: :cascade do |t|
    t.datetime "timestamp"
    t.string "file_size"
    t.string "s3_key"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_storage_statistics_on_user_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.string "invite_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "story_owners_links", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "story_id", null: false
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_story_owners_links_on_story_id"
    t.index ["user_id"], name: "index_story_owners_links_on_user_id"
  end

  create_table "story_users_links", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "story_id", null: false
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_story_users_links_on_story_id"
    t.index ["user_id"], name: "index_story_users_links_on_user_id"
  end

  create_table "user_devices", force: :cascade do |t|
    t.string "device_token"
    t.string "channel_type"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_devices_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.text "bio"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "attachments", "answers"
  add_foreign_key "attachments", "media", column: "media_id"
  add_foreign_key "attachments", "users"
  add_foreign_key "comments", "moments"
  add_foreign_key "comments", "users"
  add_foreign_key "emergencies", "users"
  add_foreign_key "media", "moments"
  add_foreign_key "moments", "chapters"
  add_foreign_key "notifications", "from_users"
  add_foreign_key "notifications", "to_users"
  add_foreign_key "questions", "chapters"
  add_foreign_key "questions", "stories"
  add_foreign_key "questions", "users"
  add_foreign_key "reactions", "moments"
  add_foreign_key "reactions", "users"
  add_foreign_key "relationships", "users"
  add_foreign_key "shared_urls", "chapters"
  add_foreign_key "shared_urls", "stories"
  add_foreign_key "shared_urls", "users"
  add_foreign_key "storage_statistics", "users"
  add_foreign_key "story_owners_links", "stories"
  add_foreign_key "story_owners_links", "users"
  add_foreign_key "story_users_links", "stories"
  add_foreign_key "story_users_links", "users"
  add_foreign_key "user_devices", "users"
end
