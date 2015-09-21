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

ActiveRecord::Schema.define(version: 20150822095641) do

  create_table "batches", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bridges", force: :cascade do |t|
    t.integer  "subject_id",  limit: 4
    t.integer  "grade_id",    limit: 4
    t.integer  "employee_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "total_days",  limit: 4
  end

  create_table "bus_allotments", force: :cascade do |t|
    t.integer  "student_id",   limit: 4
    t.integer  "transport_id", limit: 4
    t.integer  "route_id",     limit: 4
    t.integer  "stop_id",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.float    "fee",          limit: 24
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "prefix",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "documents", force: :cascade do |t|
    t.integer  "student_id",  limit: 4
    t.string   "description", limit: 255
    t.string   "attachment",  limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "emergencies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "mobile",     limit: 255
    t.string   "phone",      limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "student_id", limit: 4
  end

  create_table "employee_attendances", force: :cascade do |t|
    t.integer  "employee_id",     limit: 4
    t.date     "attendance_date"
    t.boolean  "epresent",        limit: 1, default: true
    t.boolean  "eleave",          limit: 1, default: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "employee_number",         limit: 255
    t.date     "date_of_joining"
    t.string   "full_name",               limit: 255
    t.string   "gender",                  limit: 255
    t.date     "date_of_birth"
    t.string   "religion",                limit: 255
    t.string   "qualification",           limit: 255
    t.integer  "category_id",             limit: 4
    t.integer  "department_id",           limit: 4
    t.string   "marital_status",          limit: 255
    t.integer  "child_count",             limit: 4
    t.string   "father_name",             limit: 255
    t.string   "mother_name",             limit: 255
    t.string   "spouse_name",             limit: 255
    t.string   "blood_group",             limit: 255
    t.string   "nationality",             limit: 255
    t.string   "id_card_no",              limit: 255
    t.date     "id_card_expiry"
    t.string   "address1",                limit: 255
    t.string   "address2",                limit: 255
    t.string   "city",                    limit: 255
    t.string   "country",                 limit: 255
    t.string   "home_phone",              limit: 255
    t.string   "mobile_number",           limit: 255
    t.string   "email",                   limit: 255
    t.float    "salary",                  limit: 24
    t.integer  "position_id",             limit: 4
    t.string   "status",                  limit: 255
    t.date     "pay_date"
    t.date     "next_due_date"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "total_experience_years",  limit: 4
    t.integer  "total_experience_months", limit: 4
  end

  create_table "exams", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "batch_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "start_date", limit: 255
    t.string   "end_date",   limit: 255
  end

  create_table "fees", force: :cascade do |t|
    t.integer  "student_id", limit: 4
    t.integer  "amount",     limit: 4
    t.integer  "user_id",    limit: 4
    t.string   "month",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "grade_subjects", force: :cascade do |t|
    t.integer  "subject_id", limit: 4
    t.integer  "grade_id",   limit: 4
    t.integer  "week_id",    limit: 4
    t.string   "dayname",    limit: 255
    t.text     "classwork",  limit: 65535
    t.text     "homework",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "section",    limit: 255
    t.integer  "batch_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "booknum",    limit: 255
    t.integer  "student_id", limit: 4
    t.float    "discount",   limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "code",            limit: 255
    t.string   "name",            limit: 255
    t.integer  "shopcategory_id", limit: 4
    t.string   "size",            limit: 255
    t.float    "price",           limit: 24
    t.integer  "grade_id",        limit: 4
    t.integer  "sold",            limit: 4
    t.integer  "left",            limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.float    "purchase",        limit: 24
  end

  create_table "leaves", force: :cascade do |t|
    t.string   "reason",      limit: 255
    t.text     "description", limit: 65535
    t.integer  "employee_id", limit: 4
    t.date     "leave_from"
    t.date     "leave_to"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.boolean  "approved",    limit: 1,     default: false
  end

  create_table "lessonplan_details", force: :cascade do |t|
    t.integer  "subject_id",    limit: 4
    t.integer  "lessonplan_id", limit: 4
    t.string   "period",        limit: 255
    t.text     "procedure",     limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "lessonplans", force: :cascade do |t|
    t.integer  "grade_id",      limit: 4
    t.integer  "subject_id",    limit: 4
    t.string   "topic",         limit: 255
    t.string   "selection",     limit: 255
    t.string   "startdate",     limit: 255
    t.string   "enddate",       limit: 255
    t.text     "studentengage", limit: 65535
    t.text     "newvocabulary", limit: 65535
    t.text     "objectives",    limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "year_plan_id",  limit: 4
  end

  create_table "lines", force: :cascade do |t|
    t.integer  "item_id",    limit: 4
    t.integer  "invoice_id", limit: 4
    t.integer  "quantity",   limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "package_id", limit: 4
    t.float    "price",      limit: 24
  end

  create_table "marks", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.float    "marks",         limit: 24
    t.float    "passing_marks", limit: 24
    t.integer  "grade_id",      limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "marksheets", force: :cascade do |t|
    t.integer  "exam_id",       limit: 4
    t.integer  "bridge_id",     limit: 4
    t.integer  "totalmarks",    limit: 4
    t.float    "obtainedmarks", limit: 24
    t.integer  "student_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "packageitems", force: :cascade do |t|
    t.integer  "package_id", limit: 4
    t.integer  "item_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "code",       limit: 255
    t.float    "price",      limit: 24
    t.integer  "sold",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "grade_id",   limit: 4
  end

  create_table "parents", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "relation",    limit: 255
    t.string   "education",   limit: 255
    t.string   "profession",  limit: 255
    t.string   "dob",         limit: 255
    t.string   "income",      limit: 255
    t.string   "iqamaNumber", limit: 255
    t.string   "iqamaExpiry", limit: 255
    t.string   "address1",    limit: 255
    t.string   "address2",    limit: 255
    t.string   "city",        limit: 255
    t.string   "country",     limit: 255
    t.string   "officePhone", limit: 255
    t.string   "mobile",      limit: 255
    t.string   "email",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "periods", force: :cascade do |t|
    t.integer  "time_table_id", limit: 4
    t.integer  "period_num",    limit: 4
    t.integer  "subject_id",    limit: 4
    t.string   "day",           limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "portion_details", force: :cascade do |t|
    t.integer  "portion_id", limit: 4
    t.integer  "subject_id", limit: 4
    t.text     "note",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "details",    limit: 65535
  end

  create_table "portions", force: :cascade do |t|
    t.integer  "year_plan_id", limit: 4
    t.string   "quarter",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "category_id", limit: 4
    t.string   "name",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sessionals", force: :cascade do |t|
    t.integer  "marksheet_id", limit: 4
    t.integer  "mark_id",      limit: 4
    t.float    "marks",        limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "shopcategories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "stops", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "route_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "student_attendances", force: :cascade do |t|
    t.integer  "student_id",      limit: 4
    t.date     "attendance_date"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.boolean  "epresent",        limit: 1, default: true
    t.boolean  "eleave",          limit: 1, default: false
  end

  create_table "student_holidays", force: :cascade do |t|
    t.string   "reason",      limit: 255
    t.text     "description", limit: 65535
    t.integer  "student_id",  limit: 4
    t.date     "leave_from"
    t.date     "leave_to"
    t.boolean  "approved",    limit: 1,     default: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "first_name",        limit: 255
    t.string   "middle_name",       limit: 255
    t.string   "last_name",         limit: 255
    t.integer  "grade_id",          limit: 4
    t.string   "gender",            limit: 255
    t.string   "dob",               limit: 255
    t.string   "blood",             limit: 255
    t.string   "birth_place",       limit: 255
    t.string   "nationality",       limit: 255
    t.string   "language",          limit: 255
    t.string   "religion",          limit: 255
    t.string   "address",           limit: 255
    t.string   "city",              limit: 255
    t.string   "state",             limit: 255
    t.string   "pincode",           limit: 255
    t.string   "country",           limit: 255
    t.string   "mobile",            limit: 255
    t.string   "phone",             limit: 255
    t.string   "email",             limit: 255
    t.string   "parent_id",         limit: 255
    t.integer  "fee",               limit: 4
    t.string   "term",              limit: 255
    t.string   "image",             limit: 255
    t.string   "iqamaNumber",       limit: 255
    t.string   "iqamaExpiry",       limit: 255
    t.string   "previousInstitute", limit: 255
    t.string   "year",              limit: 255
    t.string   "totalMarks",        limit: 255
    t.string   "obtainedMarks",     limit: 255
    t.string   "forthname",         limit: 255
    t.string   "fifthname",         limit: 255
    t.string   "arabicname",        limit: 255
    t.string   "weight",            limit: 255
    t.string   "height",            limit: 255
    t.string   "eyeside",           limit: 255
    t.string   "hearing",           limit: 255
    t.string   "rh",                limit: 255
    t.string   "alergy",            limit: 255
    t.string   "nurology",          limit: 255
    t.string   "physical",          limit: 255
    t.string   "disability",        limit: 255
    t.string   "behaviour",         limit: 255
    t.string   "fullname",          limit: 255
    t.string   "due_date",          limit: 255
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "code",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "time_tables", force: :cascade do |t|
    t.integer  "grade_id",            limit: 4
    t.integer  "employee_id",         limit: 4
    t.integer  "break_after_period",  limit: 4
    t.integer  "prayer_after_period", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "transportfeerecords", force: :cascade do |t|
    t.integer  "bus_allotment_id", limit: 4
    t.float    "fee",              limit: 24
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "status",           limit: 255
  end

  create_table "transports", force: :cascade do |t|
    t.string   "arrival",     limit: 255
    t.string   "departure",   limit: 255
    t.integer  "employee_id", limit: 4
    t.integer  "route_id",    limit: 4
    t.integer  "vehicle_id",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "no",          limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "role",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string   "code",         limit: 255
    t.string   "seat",         limit: 255
    t.string   "max_allowed",  limit: 255
    t.string   "vehicle_type", limit: 255
    t.string   "insurance",    limit: 255
    t.string   "tax",          limit: 255
    t.string   "permit",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "vehicle_no",   limit: 255
  end

  create_table "weekends", force: :cascade do |t|
    t.integer  "weekend_day", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "weeks", force: :cascade do |t|
    t.integer  "year_plan_id",        limit: 4
    t.date     "start_date"
    t.date     "end_date"
    t.string   "holiday_description", limit: 255
    t.integer  "year_week_id",        limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "year_plans", force: :cascade do |t|
    t.string   "year_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
