

require 'faker'

a1 = Article.create(title: "Jaipur, India", text: Faker::Lorem.paragraph(10), image: "https://raw.githubusercontent.com/nliles/nliles.github.io/master/Jaipur.jpg")
a2 = Article.create(title: "Puerto Palma, Colombia", text: Faker::Lorem.paragraph(10), image: "https://raw.githubusercontent.com/nliles/nliles.github.io/master/Colombia_1.jpg")
a3 = Article.create(title: "Machu Picchu, Peru", text: Faker::Lorem.paragraph(10), image: "https://raw.githubusercontent.com/nliles/nliles.github.io/master/Peru1.jpg")
a4 = Article.create(title: "Pushkar, India", text: Faker::Lorem.paragraph(10), image: "https://raw.githubusercontent.com/nliles/nliles.github.io/master/Pushkar.jpg")
a5 = Article.create(title: "Jackson Hole, Wyoming", text: Faker::Lorem.paragraph(10), image: "https://raw.githubusercontent.com/nliles/nliles.github.io/master/Tetons.jpg")
a6 = Article.create(title: "Varanasi, India", text: Faker::Lorem.paragraph(10), image: "https://raw.githubusercontent.com/nliles/nliles.github.io/master/Varanasi.jpg")

3.times do 
a1.comments.create(commenter: Faker::Name.name , body: Faker::Lorem.paragraph(1))
end 

3.times do 
a2.comments.create(commenter: Faker::Name.name , body: Faker::Lorem.paragraph(1))
end 

3.times do 
a3.comments.create(commenter: Faker::Name.name , body: Faker::Lorem.paragraph(1))
end 

3.times do 
a4.comments.create(commenter: Faker::Name.name , body: Faker::Lorem.paragraph(1))
end 

3.times do 
a5.comments.create(commenter: Faker::Name.name , body: Faker::Lorem.paragraph(1))
end 

3.times do 
a6.comments.create(commenter: Faker::Name.name , body: Faker::Lorem.paragraph(1))
end 


