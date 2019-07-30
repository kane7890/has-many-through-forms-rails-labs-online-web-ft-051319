# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.find_or_create_by(name: 'Lefty')
Category.find_or_create_by(name: 'Centrist')
Category.find_or_create_by(name: 'Righty')
Category.find_or_create_by(name: 'Anarchist')
teamliam=Category.find_or_create_by(name: 'Team Liam')
teamnoel=Category.find_or_create_by(name: 'Team Noel')
rwilliams=User.create(username: "rwilliams", email: "rwilliams@robbie.com")
post1=Post.create(title: 'Liam new album', content: "Liam's first singles are not bad")
PostCategory.create(post: post1,category: teamliam )
Comment.create(content: "Liam still can't write songs", user: rwilliams, post: post1)
jayz=User.create(username: "jayz", email: "jay@rocafella.com")
Comment.create(content: "I can sing Wonderwall too", user: jayz, post: post1)
Comment.create(content: "You boys didn't last together as long as me", user: jayz, post:post1)
