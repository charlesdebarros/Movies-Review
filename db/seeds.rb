# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  email: 'user@email.com',
  password: 'Password123',
  password_confirmation: 'Password123'
)

Movie.create(
  [
    {
      title: 'Harry Potter and The Order of the Phoenix',
      description: "With their warning about Lord Voldemort's return scoffed at, Harry and Dumbledore are targeted by the Wizard authorities as an authoritarian bureaucrat slowly seizes power at Hogwarts.",
      movie_length: '138',
      director: 'David Yates',
      rating: '7.5',
      image_file_name: 'harry_potter_order_of_the_phoenix_poster.jpg',
      image_content_type: 'image/jpeg',
      image_file_size: 37_495,
      image_updated_at: Time.now,
      user_id: User.first.id
    }, {
      title: 'Star Wars - Episode IV - New Hope',
      description: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the evil Darth Vader.",
      movie_length: '121',
      director: 'George Lucas',
      rating: '8.6',
      image_file_name: 'star-wars-episode-iv-new-hope_poster.jpg',
      image_content_type: 'image/jpeg',
      image_file_size: 39_605,
      image_updated_at: Time.now,
      user_id: User.first.id
    }, {
      title: 'The Silence of the Lamb',
      description: 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.',
      movie_length: '118',
      director: 'Jonathan Demmse',
      rating: '8.6',
      image_file_name: 'the_silence_of_the_lambs_poster.jpg',
      image_content_type: 'image/jpeg',
      image_file_size: 176_967,
      image_updated_at: Time.now,
      user_id: User.first.id
    }, {
      title: 'Jaws',
      description: "When a killer shark unleashes chaos on a beach community, it's up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.",
      movie_length: '124',
      director: 'Steven Spielbergs',
      rating: '8.0',
      image_file_name: 'jaws_poster.jpg',
      image_content_type: 'image/jpeg',
      image_file_size: 86_524,
      image_updated_at: Time.now,
      user_id: User.first.id
    }
  ]
)

Review.create(
  [
    {
      rating: 4,
      comment: 'Simply superb!',
      user_id: User.first.id,
      movie_id: Movie.first.id
    }, {
      rating: 5,
      comment: 'A Timeless Classic',
      user_id: User.first.id,
      movie_id: Movie.second.id
    }, {
      rating: 4,
      comment: 'Suspense at its best! Really intense and entertaining!',
      user_id: User.first.id,
      movie_id: Movie.third.id
    }, {
      rating: 5,
      comment: 'Incredibly scary. An all time classic!',
      user_id: User.first.id,
      movie_id: Movie.fourth.id
    }
  ]
)
