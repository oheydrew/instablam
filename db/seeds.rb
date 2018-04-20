# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create!([
#   {
#     email: 'fredisded@gmail.com',
#     password: 'password123'
#   },
#   {
#     email: 'dirstel.kelly@gmail.com',
#     password: 'password123'
#   },
#   {
#     email: 'james@gmail.com',
#     password: 'password123'
#   }
# ]) { |user| puts "#{user.email} seeded."}

Post.create!([
  {
    image_data: 'https://i.pinimg.com/originals/93/10/40/93104006c1bc9fb0a12fd7b222c72e3f.jpg',
    caption: '#squaredog zomg',
    user: User.find(1)
  },
  {
    image_data: 'https://fallinpets.com/wp-content/uploads/2016/09/cat-funny.jpg',
    caption: '#derp :D',
    user: User.find(1)
  },
  {
    image_data: 'https://www.rover.com/blog/wp-content/uploads/2016/11/twenty20_58884ead-8650-4372-ab9f-7e7d59a928bc-1024x768.jpg',
    caption: '#definitely-not-shopped',
    user: User.find(1)
  },
  {
    image_data: 'http://ic.pics.livejournal.com/ibigdan/8161099/7140450/7140450_original.jpg',
    caption: 'Bigger than a breadbox #cute',
    user: User.find(1)
  },
  {
    image_data: 'https://www.rd.com/wp-content/uploads/2017/10/These-Funny-Dog-Videos-Are-the-Break-You-Need-Right-Now_493370860-Jenn_C-760x506.jpg',
    caption: '#mlem mlem is something burning',
    user: User.find(1)
  },
  {
    image_data: 'http://i.imgur.com/jRf48.jpg',
    caption: '#capybara #baller',
    user: User.find(1)
  },
]) { |post| puts "#{post.caption} | seeded."}