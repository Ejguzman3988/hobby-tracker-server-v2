# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# CATEGORIES ---------------------



# create_table "categories", force: :cascade do |t|
#   t.string "name"
#   t.string "picture"
#   t.string "color"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

# categoryArr = [
#   'Arts',
#   'Collecting',
#   'Games',
#   'Electronics',
#   'Performing Arts',
#   'Travel',
#   'Outdoors',
#   'Sports',
#   'Music',
#   'Spiritual Mental',
#   'Food',
#   'Entertainment',
#   'Pets',
#   'Work',
#   'Misc'
# ]

# categoryArr.each do |cat|
#   catHash = {
#     name: cat,
#     picture: Faker::LoremFlickr.image(size: "300x300", search_terms: [cat]),
#     color: Faker::Color.hex_color
#   }
#   Category.create(catHash)

# end
#picture: Faker::LoremFlickr.image(size: "50x60", search_terms: ['sports'])
#color: Faker::Color.hex_color
# CATEGORIES ---------------------

# USER ---------------------

# USER ---------------------

# TODO: TIMERS ---------------------

# create_table "timers", force: :cascade do |t|
#   t.integer "user_id", null: false
#   t.integer "category_id", null: false
#   t.string "name"
#   t.string "description"
#   t.integer "time_total"
#   t.datetime "time_started"
#   t.datetime "time_ended"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["category_id"], name: "index_timers_on_category_id"
#   t.index ["user_id"], name: "index_timers_on_user_id"
# end




#TODO TIMERS ---------------------
