# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# table_names = %w(users)
# table_names.each do |table_name|
#   path = Rails.root.join("db/seeds", Rails.env, table_name + ".rb")
#   if File.exist?(path)
#     puts "Creating #{table_name}..."
#     require path
#   end
# end

# users = User.create!([
#   {name: 'テストユーザー', email: 'test-user@test.jp', password: '123456', password_confirmation: '123456'},
# ])

# genres = Genre.create!([
#   {name: 'クラシック'},
#   {name: 'ジャズ'},
#   {name: 'Jポップ'},
#   {name: 'ボカロ'},
#   {name: 'アニソン'},
# ])

# ユーザーージャンル中間データ投入
# CSV.foreach('db/csv/seed_user_genres.csv', headers: true) do |row|
#   UserGenre.create!(
#     user_id: row['user_id'],
#     genre_id: row['genre_id'],
#   )

# ユーザーデータ投入
# CSV.foreach('db/csv/seed_users.csv', headers: true) do |row|
#   User.create!(
#     name: row['name'],
#     area: row['area'],
#     experience: row['experience'],
#     stance: row['stance'],
#     history: row['history'],
#     introduction: row['introduction'],
#     email: row['email'],
#     password: row['password'],
#     password_confirmation: row['password_confirmation'],
#   )
# end