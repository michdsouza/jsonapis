romance_genre = Genre.create(name: "Romance", description: "Love is in the air")
drama_genre = Genre.create(name: "Drama", description: "Can you feel the intensity?")
horror_genre = Genre.create(name: "Horror", description: "Spooky!")

movie1 = Movie.create(title: "The English Patient", synopsis: "At the close of WWII, a young nurse tends to a badly-burned plane crash victim. His past is shown in flashbacks, revealing an involvement in a fateful love affair.", runtime: 167, genre_id: romance_genre.id)
movie2 = Movie.create(title: "Titanic", synopsis: "A seventeen-year-old aristocrat, expecting to be married to a rich claimant by her mother, falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.", runtime: 194, genre_id: drama_genre.id)
movie3 = Movie.create(title: "Saw", synopsis: "With a dead body lying between them, two men wake up in the secure lair of a serial killer who's been nicknamed 'Jigsaw'. The men must follow various rules and objectives if they wish to survive and win the deadly game set for them.", runtime: 103, genre_id: horror_genre.id)
movie4 = Movie.create(title: "Freddy vs. Jason", synopsis: "Freddy Krueger and Jason Voorhees return to terrorize the teenage population. Except this time, they're out to get each other, too.", runtime: 97, genre_id: horror_genre.id)

user1 = User.create(first_name: "Michelle", last_name: "D'Souza")
user2 = User.create(first_name: "Eric", last_name: "Chernuka")
user3 = User.create(first_name: "John", last_name: "Doe")

Rating.create(user_id: user1.id, movie_id: movie1.id, rating: 8.9)
Rating.create(user_id: user1.id, movie_id: movie2.id, rating: 8.5)
Rating.create(user_id: user2.id, movie_id: movie3.id, rating: 6.5)
Rating.create(user_id: user2.id, movie_id: movie2.id, rating: 5.0)
Rating.create(user_id: user3.id, movie_id: movie4.id, rating: 9.0)