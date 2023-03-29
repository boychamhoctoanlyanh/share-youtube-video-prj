user1 = User.create(username: "user1", password: "password")
user2 = User.create(username: "user2", password: "password")
user3 = User.create(username: "user3", password: "password")
user4 = User.create(username: "user4", password: "password")
user5 = User.create(username: "user5", password: "password")

user1_movie1 = Movie.create(url: "https://www.youtube.com/watch?v=O8MnTgASxJ4", user: user1)
user1_movie2 = Movie.create(url: "https://www.youtube.com/watch?v=-7sISWuTdj0", user: user1)

user2_movie1 = Movie.create(url: "https://www.youtube.com/watch?v=6kq-RRK4Q8w", user: user2)
user2_movie2 = Movie.create(url: "https://www.youtube.com/watch?v=tcat9CPiAZ4", user: user2)

user3_movie1 = Movie.create(url: "https://www.youtube.com/watch?v=wEBgnZl9L0o", user: user3)

vote_types = Vote.vote_types.keys

[user1, user2, user3, user4, user5].each do |user|
  [user1_movie1, user1_movie2, user2_movie1, user2_movie2, user3_movie1].each do |movie|
    user.votes.create(movie: movie, vote_type: vote_types.sample)
  end
end
