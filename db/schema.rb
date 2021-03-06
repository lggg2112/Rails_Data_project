# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_22_104213) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "shcedule"
    t.integer "author_id"
    t.integer "employee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_appointments_on_author_id"
    t.index ["employee_id"], name: "index_appointments_on_employee_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "phonenumber"
    t.string "nationality"
    t.integer "publisher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["publisher_id"], name: "index_authors_on_publisher_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.datetime "pubdate"
    t.integer "isbn"
    t.integer "publisher_id", null: false
    t.integer "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["publisher_id"], name: "index_books_on_publisher_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "phonenumber"
    t.string "position"
    t.integer "publisher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["publisher_id"], name: "index_employees_on_publisher_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "permalink"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "phonenumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "authors", "publishers"
  add_foreign_key "books", "authors"
  add_foreign_key "books", "publishers"
  add_foreign_key "employees", "publishers"
end
