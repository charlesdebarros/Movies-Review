# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_1 = User.create(
  id: 1,
  email: 'user@email.com',
  password: 'Password123',
  password_confirmation: 'Password123'
)

movie_1 = Movie.create(
  id: 1,
  title: 'Harry Potter and The Order of the Phoenix',
  description: "With their warning about Lord Voldemort's return scoffed at, Harry and Dumbledore are targeted by the Wizard authorities as an authoritarian bureaucrat slowly seizes power at Hogwarts.",
  movie_length: '138',
  director: 'David Yates',
  rating: '7.5',
  image_file_name: 'harry_potter_order_of_the_phoenix.jpg',
  image_content_type: 'image/jpeg',
  image_file_size: 37495,
  image_updated_at: Time.now,
  user_id: 1
)

movie_2 = Movie.create(
  id: 2,
  title: 'Star Wars - Episode IV - New Hope.jpg',
  description: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the evil Darth Vader.",
  movie_length: '121',
  director: 'George Lucas',
  rating: '8.6',
  image_file_name: 'star-wars-episode-iv-new-hope.jpg',
  image_content_type: 'image/jpeg',
  image_file_size: 39605,
  image_updated_at: Time.now,
  user_id: 1
)

review_1 = Review.create(
  id: 1,
  rating: 4,
  comment: 'Simply superb!',
  user_id: 1,
  movie_id: 1
)

review_2 = Review.create(
  id: 2,
  rating: 5,
  comment: 'A Timeless Classic',
  user_id: 1,
  movie_id: 2
)
