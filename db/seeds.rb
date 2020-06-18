# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create([username: 'Joanna', email: 'joanna@gmail.com', password: 123, threadd_id: 1])

user_2 = User.create([username: 'Kelly', email: 'kelstar@gmail.com', password: 123, threadd_id: 2])

user_2 = User.create([username: 'Tom', email: 'tommytommy@gmail.com', password: 123, threadd_id: , comment_id:1])

user_2 = User.create([username: 'Lucy', email: 'lucy@hotmail.com', password: 123, threadd_id: , comment_id:2])


thread_1 = Threadd.create([username: 'Joanna', date: Date.today, thread_title: 'The best track and field athlete of all time!', thread_body: 'I personally feel like the greatest track and field is Usain Bolt! What a legend!', user_id: 1 ])

thread_1 = Threadd.create([username: 'Kelly', date: Date.today, thread_title: 'The best tennis player of all time!', thread_body: 'Serena Williams is the best!!!', user_id: 2])

comment_1 = Comment.create([threadd_id: 1, username: 'Tom', date: DateTime.now, comment_description: 'I disagree I think Carl Lewis is the best!' , upvote: 1, downvote: 4])

comment_2 = Comment.create([threadd_id: 1, username: 'Lucy', date: DateTime.now, comment_description: 'Yeah Bolt is a legend he is the best !', upvote: 6, downvote: 1])

