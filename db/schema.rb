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

ActiveRecord::Schema.define(version: 2019_05_17_163846) do

  create_table "sobreviventes", force: :cascade do |t|
    t.string "nome"
    t.integer "idade"
    t.string "genero"
    t.float "last_latitude"
    t.float "last_longitude"
    t.integer "first_abducted_flag"
    t.integer "second_abducted_flag"
    t.integer "third_abducted_flag"
    t.boolean "is_abducted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
