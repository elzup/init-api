# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'elzup', password: 'password')
user2 = User.create(username: 'toshino', password: 'password')

puts "#{User.count} User created"

category1 = Category.create(name: 'カテゴリー1')
category2 = Category.create(name: 'カテゴリー2')

puts "#{Mission.count} Mission created"

mission1 = user1.missions.create(
    title: 'テストミッション1',
    description: 'これはテストミッションの詳細分です。',
    category_id: category1.id)
mission2 = user1.missions.create(
    title: 'テストミッション2',
    description: '長い詳細文。' * 10,
    category_id: category1.id)
mission3 = user1.missions.create(
    title: 'テストミッション3',
    description: '説明文。',
    category_id: category2.id)

puts "#{Mission.count} Mission created"

user2.completed_missions << mission1
user2.completed_missions << mission2

puts "#{Complete.count} Complete created"
