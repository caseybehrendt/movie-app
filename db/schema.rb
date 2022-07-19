

ActiveRecord::Schema[7.0].define(version: 2022_07_19_134510) do
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "known_for"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
    t.integer "movie_id"
  end

  create_table "adds_director_to_moves", force: :cascade do |t|
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adds_english_to_moves", force: :cascade do |t|
    t.string "english"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_genres", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.text "plot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
