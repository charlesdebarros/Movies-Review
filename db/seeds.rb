# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_1 = User.create(
  id: 999,
  email: 'user@email.com',
  password: 'Password123',
  password_confirmation: 'Password123'
)

movie_1 = Movie.create(
  id: 901,
  title: 'Harry Potter and The Order of the Phoenix',
  description: "With their warning about Lord Voldemort's return scoffed at, Harry and Dumbledore are targeted by the Wizard authorities as an authoritarian bureaucrat slowly seizes power at Hogwarts.",
  movie_length: '138',
  director: 'David Yates',
  rating: '7.5',
  image_file_name: 'harry_potter_order_of_the_phoenix_poster.jpg',
  image_content_type: 'image/jpeg',
  image_file_size: 37495,
  image_updated_at: Time.now,
  user_id: 999
)

movie_2 = Movie.create(
  id: 902,
  title: 'Star Wars - Episode IV - New Hope',
  description: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the evil Darth Vader.",
  movie_length: '121',
  director: 'George Lucas',
  rating: '8.6',
  image_file_name: 'star-wars-episode-iv-new-hope_poster.jpg',
  image_content_type: 'image/jpeg',
  image_file_size: 39605,
  image_updated_at: Time.now,
  user_id: 999
)

movie_3 = Movie.create(
  id: 903,
  title: 'The Silence of the Lamb',
  description: "A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.",
  movie_length: '118',
  director: 'Jonathan Demmse',
  rating: '8.6',
  image_file_name: 'the_silence_of_the_lambs_poster.jpg',
  image_content_type: 'image/jpeg',
  image_file_size: 176967,
  image_updated_at: Time.now,
  user_id: 999
)

movie_4 = Movie.create(
  id: 904,
  title: 'Jaws',
  description: "When a killer shark unleashes chaos on a beach community, it's up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.",
  movie_length: '124',
  director: 'Steven Spielbergs',
  rating: '8.0',
  image_file_name: 'jaws_poster.jpg',
  image_content_type: 'image/jpeg',
  image_file_size: 86524,
  image_updated_at: Time.now,
  user_id: 999
)

review_1 = Review.create(
  id: 901,
  rating: 4,
  comment: 'Simply superb!',
  user_id: 999,
  movie_id: 901
)

review_2 = Review.create(
  id: 902,
  rating: 5,
  comment: 'A Timeless Classic',
  user_id: 999,
  movie_id: 902
)

review_3 = Review.create(
  id: 903,
  rating: 4,
  comment: 'Suspense at its best! Really intense and entertaining!',
  user_id: 999,
  movie_id: 903
)

review_4 = Review.create(
  id: 904,
  rating: 5,
  comment: 'Incredibly scary. An all time classic!',
  user_id: 999,
  movie_id: 904
)
