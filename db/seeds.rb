# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Friend.destroy_all

anna = User.create(name: "Anna", email: "annacarey@icloud.com", phone_number: "914-907-4672", image_url: "test")
calvin = User.create(name: "Calvin", email: "calvin@calvin.com", phone_number: "555-555-5555", image_url: "test") 

Friend.create(name: "Rachel", phone_number: "+19149074672", image_url: "https://akns-images.eonline.com/eol_images/Entire_Site/2019031/rs_600x600-190131112337-600-rachel-friends.jpg?fit=around|1200:1200&crop=1200:1200;center,top&output-quality=90", date_last_outreach: Time.now, priority: "High", user: anna)
Friend.create(name: "Joey", phone_number: "+19149074672", image_url: "https://www.cheatsheet.com/wp-content/uploads/2019/10/matt-le-blanc.jpg", date_last_outreach: Time.now, priority: "High", user: anna)
Friend.create(name: "Chandler", phone_number: "+19149074672", image_url: "https://pmctvline2.files.wordpress.com/2017/05/friends-chandler-video.jpg?w=620", date_last_outreach: Time.now, priority: "High", user: anna)
Friend.create(name: "Rachel", phone_number: "+19149074672", image_url: "https://akns-images.eonline.com/eol_images/Entire_Site/2019031/rs_600x600-190131112337-600-rachel-friends.jpg?fit=around|1200:1200&crop=1200:1200;center,top&output-quality=90", date_last_outreach: Time.now, priority: "High", user: anna)
Friend.create(name: "Joey", phone_number: "+19149074672", image_url: "https://www.cheatsheet.com/wp-content/uploads/2019/10/matt-le-blanc.jpg", date_last_outreach: Time.now, priority: "Medium", user: anna)
Friend.create(name: "Monica", phone_number: "+19149074672", image_url: "https://image.insider.com/5c8279ebeb3ce821ef1247a2?width=1100&format=jpeg&auto=webp", date_last_outreach: Time.now, priority: "Medium", user: anna)
Friend.create(name: "Ross", phone_number: "+19149074672", image_url: "https://i.ytimg.com/vi/1HkqeORgn_U/maxresdefault.jpg", date_last_outreach: Time.now, priority: "Low", user: anna)
Friend.create(name: "Phoebe", phone_number: "+19149074672", image_url: "https://i.pinimg.com/originals/4a/b6/c2/4ab6c2362e2e32866b8f1094175e246d.jpg", date_last_outreach: Time.now, priority: "Low", user: anna)
Friend.create(name: "Janice", phone_number: "+19149074672", image_url: "https://mtv.mtvnimages.com/uri/mgid:ao:image:mtv.com:221550?quality=0.8&format=jpg&width=1440&height=810&.jpg", date_last_outreach: Time.now, priority: "Medium", user: anna)
Friend.create(name: "Gunther", phone_number: "+19149074672", image_url: "https://i0.wp.com/metro.co.uk/wp-content/uploads/2019/04/gunther2-0c0e.png?quality=90&strip=all&zoom=1&resize=644%2C396&ssl=1", date_last_outreach: Time.now, priority: "Low", user: anna)
