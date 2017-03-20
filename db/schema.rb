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

ActiveRecord::Schema.define(version: 20170320104938) do

  create_table "communes", force: :cascade do |t|
    t.integer "intercommunality_id"
    t.string  "name"
    t.string  "code_inseee"
    t.index ["intercommunality_id"], name: "index_communes_on_intercommunality_id"
  end

  create_table "communes_streets", id: false, force: :cascade do |t|
    t.integer "commune_id",  null: false
    t.integer "street_id",   null: false
    t.integer "communes_id"
    t.integer "streets_id"
    t.index ["communes_id"], name: "index_communes_streets_on_communes_id"
    t.index ["streets_id"], name: "index_communes_streets_on_streets_id"
  end

  create_table "intercommunalities", force: :cascade do |t|
    t.string "name"
    t.string "siren"
  end

  create_table "streets", force: :cascade do |t|
    t.string  "title"
    t.integer "from"
    t.integer "to"
  end

end
