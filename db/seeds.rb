# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

thread_1 = Threadd.create([username: 'Joanna', date: Date.today, thread_title: 'The best track and field athlete of all time!', thread_body: 'I personally feel like the greatest track and field is Usain Bolt! What a legend!'])

comment_1 = Comment.create([threadd_id: 1, username: 'Tom', date: DateTime.now, comment_description: 'I disagree I think Carl Lewis is the best!'])

comment_2 = Comment.create([threadd_id: 1, username: 'Lucy', date: DateTime.now, comment_description: 'Yeah Bolt is a legend he is the best !'])

