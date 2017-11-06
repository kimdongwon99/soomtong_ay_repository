# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#id 3개를 만들고, 각각 게시글 3개를 만듬
(1..2).each do |i|
    User.create(email: 'songeun#{i}@gmail.com',password: "songeun#{i}",password_confirmation: "songeun#{i}", admin:"1" )
    (1..2).each do |j|
        Post.create(user_id: i, title: "title#{i}#{j}", content: "content#{i}#{j}")
    end
end
