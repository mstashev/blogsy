# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  user = User.create!(
            username:       Faker::Internet.user_name,
            email_address:  Faker::Internet.unique.email
          )
  Random.rand(0..100).times do
    user.posts.create!(
      title:  Faker::Book.title,
      body:   Faker::Lorem.paragraphs(4, true)
    )
  end
end

100.times do
  usr_id = Random.rand(1..5)
  pst_id = Random.rand(1..Post.all.count)

  Comment.create!(
    body: Faker::ChuckNorris.fact,
    user_id: usr_id,
    post_id: pst_id
  )
end
