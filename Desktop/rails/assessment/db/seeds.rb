require "faker"

user = User.create(username: "Natalie", password: "abcdefg")
user1 = User.create(username: "James", password: "password")
user2 = User.create(username: "Todd", password: "password")
user.items.create(name: "Lamp", condition: "Good", description: Faker::Lorem.sentence, starts_at: Faker::Time.backward(2, :morning), ends_at: Faker::Time.forward(7, :morning))
user1.items.create(name: "Hope Chest", condition: "Excellent", description: Faker::Lorem.sentence, starts_at: Faker::Time.backward(2, :morning), ends_at: Faker::Time.forward(7, :morning))
user2.items.create(name: "Trunk", condition: "Good", description: Faker::Lorem.sentence, starts_at: Faker::Time.backward(2, :morning), ends_at: Faker::Time.forward(7, :morning))