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

ActiveRecord::Schema.define(:version => 20121027095651) do

  create_table "availabilities", :force => true do |t|
    t.integer  "person_id"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "day_id"
  end

  create_table "call_for_papers", :force => true do |t|
    t.date     "start_date",    :null => false
    t.date     "end_date",      :null => false
    t.date     "hard_deadline"
    t.text     "welcome_text"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "info_url"
    t.string   "contact_email"
  end

  create_table "conferences", :force => true do |t|
    t.string   "acronym",                                    :null => false
    t.string   "title",                                      :null => false
    t.string   "timezone",                                   :null => false
    t.integer  "timeslot_duration",                          :null => false
    t.integer  "default_timeslots",                          :null => false
    t.integer  "max_timeslots",                              :null => false
    t.integer  "feedback_enabled",                           :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "program_export_base_url"
    t.string   "schedule_version"
    t.boolean  "schedule_public",         :default => false, :null => false
    t.string   "color"
  end

  create_table "conflicts", :force => true do |t|
    t.integer  "event_id"
    t.integer  "conflicting_event_id"
    t.integer  "person_id"
    t.string   "conflict_type"
    t.string   "severity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", :force => true do |t|
    t.integer  "conference_id"
    t.datetime "start_date"
    t.datetime "end_date"
  end

  create_table "event_attachments", :force => true do |t|
    t.integer  "event_id",                :null => false
    t.string   "title",                   :null => false
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_feedbacks", :force => true do |t|
    t.integer  "event_id"
    t.float    "rating"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_people", :force => true do |t|
    t.integer  "event_id",           :null => false
    t.integer  "person_id",          :null => false
    t.string   "event_role",         :null => false
    t.string   "role_state"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "confirmation_token"
  end

  create_table "event_ratings", :force => true do |t|
    t.integer  "event_id"
    t.integer  "person_id"
    t.float    "rating"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.integer  "conference_id",         :null => false
    t.string   "title",                 :null => false
    t.string   "subtitle"
    t.string   "event_type"
    t.integer  "time_slots"
    t.string   "state",                 :null => false
    t.string   "language"
    t.datetime "start_time"
    t.text     "abstract"
    t.text     "description"
    t.integer  "public"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "track_id"
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "average_rating"
    t.integer  "event_ratings_count"
    t.text     "note"
    t.text     "submission_note"
    t.integer  "speaker_count"
    t.integer  "event_feedbacks_count"
    t.float    "average_feedback"
  end

  create_table "im_accounts", :force => true do |t|
    t.integer  "person_id"
    t.string   "im_type"
    t.string   "im_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", :force => true do |t|
    t.string   "code"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", :force => true do |t|
    t.string   "title",         :null => false
    t.string   "url",           :null => false
    t.integer  "linkable_id",   :null => false
    t.string   "linkable_type", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name",          :default => ""
    t.string   "last_name",           :default => ""
    t.string   "public_name",                            :null => false
    t.string   "email",                                  :null => false
    t.integer  "email_public"
    t.string   "gender"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.text     "abstract"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.text     "note"
    t.boolean  "include_in_mailings", :default => false, :null => false
  end

  create_table "phone_numbers", :force => true do |t|
    t.integer  "person_id"
    t.string   "phone_type"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", :force => true do |t|
    t.integer  "conference_id", :null => false
    t.string   "name",          :null => false
    t.integer  "size"
    t.integer  "public"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rank"
  end

  create_table "ticket_servers", :force => true do |t|
    t.integer  "conference_id", :null => false
    t.string   "url"
    t.string   "user"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "queue"
  end

  create_table "tickets", :force => true do |t|
    t.integer  "event_id",         :null => false
    t.string   "remote_ticket_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", :force => true do |t|
    t.integer  "conference_id"
    t.string   "name",          :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :null => false
    t.string   "password_digest",      :limit => 128, :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "pentabarf_salt"
    t.string   "pentabarf_password"
    t.integer  "call_for_papers_id"
  end

  create_table "versions", :force => true do |t|
    t.string   "item_type",       :null => false
    t.integer  "item_id",         :null => false
    t.string   "event",           :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.integer  "conference_id"
    t.integer  "associated_id"
    t.string   "associated_type"
    t.text     "object_changes"
  end

end
