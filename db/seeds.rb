# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(username: "user1", email: "user1@test.com", password_digest: "password")

user = User.create(username: "user2", email: "user2@test.com", password_digest: "password")

user = User.create(username: "user3", email: "user3@test.com", password_digest: "password")

word = Word.create(word: "hello", difficulty_level: "easy")

word = Word.create(word: "delta", difficulty_level: "medium")

word = Word.create(word: "offal", difficulty_level: "hard")
