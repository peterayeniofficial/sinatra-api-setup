def random_number
  rand(1...10)
end

20.times do
    User.create(
      email: Faker::Internet.email,
      name: Faker::FunnyName.two_word_name
    )
end


50.times do 
  Review.create(
    user_id: User.all.sample.id,
    title: Faker::Game.title,
    rating: random_number,
    content: Faker::Lorem.sentence(word_count: 15, supplemental: true, random_words_to_add: 4)

  )
end

