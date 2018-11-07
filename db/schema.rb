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

ActiveRecord::Schema.define(version: 2018_11_07_140509) do

  create_table "movies", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "title"
    t.string "serial_film"
    t.string "bahasa"
    t.string "sutradara"
    t.string "durasi"
    t.text "sinopsis"
    t.date "tanggal_rilis"
    t.string "link_movie"
    t.string "gambar_movie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
