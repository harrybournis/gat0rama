# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Setting.create
s = Setting.first
s.value = {"header_logo"=>"/images/LOGOSITETEST.png", "navbar_links_color"=>"#063a35", "website_background_color"=>"transparent", "website_background_image"=>""}
s.save
ParalaxImage.create(url: "/placeholders/clown.gif")
ParalaxImage.create(url: "/placeholders/adidas.png")
Randomizer.post(30)
Randomizer.news(6)
BlogPost.limit(28).each { |p| p.publish }
News.limit(5).each { |p| p.publish }
