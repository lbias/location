user0 = User.create(email: "user0@gmail.com", password: "11111111", friend_id: 0)

user1 = User.create(email: "user1@gmail.com", password: "11111111", friend_id: [2, 3, 4, 5, 6])
friend1 = User.create(friend_id: user1.id, email: "friend1@gmail.com", password: "11111111")
friend2 = User.create(friend_id: user1.id, email: "friend2@gmail.com", password: "11111111")
friend3 = User.create(friend_id: user1.id, email: "friend3@gmail.com", password: "11111111")
friend4 = User.create(friend_id: user1.id, email: "friend4@gmail.com", password: "11111111")
friend5 = User.create(friend_id: user1.id, email: "friend5@gmail.com", password: "11111111")

print 'Created user1 with 5 friends.'

user2 = User.create(email: "user2@gmail.com", password: "11111111", friend_id: [8, 9, 10, 11, 12])
friend6 = User.create(friend_id: user2.id, email: "friend6@gmail.com", password: "11111111")
friend7 = User.create(friend_id: user2.id, email: "friend7@gmail.com", password: "11111111")
friend8 = User.create(friend_id: user2.id, email: "friend8@gmail.com", password: "11111111")
friend9 = User.create(friend_id: user2.id, email: "friend9@gmail.com", password: "11111111")
friend10 = User.create(friend_id: user2.id, email: "friend10@gmail.com", password: "11111111")

print 'Created user2 with 5 friends.'

user3 = User.create(email: "user3@gmail.com", password: "11111111", friend_id: [14, 15, 16, 17, 18])
friend11 = User.create(friend_id: user3.id, email: "friend11@gmail.com", password: "11111111")
friend12 = User.create(friend_id: user3.id, email: "friend12@gmail.com", password: "11111111")
friend13 = User.create(friend_id: user3.id, email: "friend13@gmail.com", password: "11111111")
friend14 = User.create(friend_id: user3.id, email: "friend14@gmail.com", password: "11111111")
friend15 = User.create(friend_id: user3.id, email: "friend15@gmail.com", password: "11111111")

print 'Created user3 with 5 friends.'
