# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts Seeding Post records 


post_1 = Post.create(title: "Post Title 1")
post_2 = Post.create(title: "Post Title 2")
post_3 = Post.create(title: "Post Title 3")

post_1.comments.create 
post_2.comments.create 
post_3.comments.create 


