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

ActiveRecord::Schema[7.1].define(version: 2024_04_02_230210) do
  create_table "movie_directors", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.string "birth_date"
    t.integer "movie_genre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_genre_id"], name: "index_movie_directors_on_movie_genre_id"
  end

  create_table "movie_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "release_year"
    t.string "summary"
    t.string "country"
    t.integer "duration"
    t.integer "movie_genre_id", null: false
    t.integer "movie_director_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.integer "visibility", default: 0
    t.index ["movie_director_id"], name: "index_movies_on_movie_director_id"
    t.index ["movie_genre_id"], name: "index_movies_on_movie_genre_id"
  end

  add_foreign_key "movie_directors", "movie_genres"
  add_foreign_key "movies", "movie_directors"
  add_foreign_key "movies", "movie_genres"
end
