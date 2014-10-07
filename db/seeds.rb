# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.create(project_name: "TechLX",
							 project_description: "Landing page for Non-Profit Educational Outreach. Application currently under development. Contributing heavily to the front-end. Also implementing Rspec tests and Stripe API.", 
							 project_stack: "Ruby On Rails, HTML, CSS, Bootstrap, Responsive Design, JS, jQuery, Stripe API",
							 project_url: "http://www.techlx.com/", 
							 project_source_url: "closed", 
							 project_img: "techlx-grab2.png", 
							 project_feature_lang: "Rails", 
							 project_state: "Active")

Project.create(project_name: "MetaGame",
							 project_description: "An application to bring gamers together on a local level. This group project came together in a single week @ DBC. Our team of 5 put in over 100 hours each. GROUP HIGHFIVES!", 
							 project_stack: "Ruby On Rails, JS, Ember, PostgreSQL Schema Design, Bootstrap, HTML, CSS, GiantBomb-Steam API",
							 project_url: "http://metagame.herokuapp.com", 
							 project_source_url: "https://github.com/fence-lizards-2014/MetaGame", 
							 project_img: "mg-games-grab.jpg", 
							 project_feature_lang: "Ruby on Rails", 
							 project_state: "Cold Beta")

Project.create(project_name: "DBCode",
							 project_description: "SOLO DBC project started in June. The goal is to create an educational resource that can help students get un-blocked quickly. Focus on CRUD and API integration. Future plans include folding in modules from other DBC related apps to create a student resource hub.", 
							 project_stack: "Sinatra, Ruby, JS, CSS, HTML, Bootstrap, Oauth",
							 project_url: "http://dbcode.herokuapp.com", 
							 project_source_url: "https://github.com/bootcoder/DBCode", 
							 project_img: "dbcode.jpg", 
							 project_feature_lang: "Sinatra", 
							 project_state: "Beta")

Project.create(project_name: "DoppelTwit",
							 project_description: "Early attempt at a Twitter Clone. Team of 4 constructed this application in 24 hours. Contributions include a M2M self referential schema and an excellent intro to GIT work flow. ", 
							 project_stack: "Sinatra, Ruby, SQLite Self Referential M2M, Basic User Authentication",
							 project_url: "http://doppeltwit.herokuapp.com/", 
							 project_source_url: "https://github.com/bootcoder/doppel-clone", 
							 project_img: "doppel-grab.png", 
							 project_feature_lang: "Sinatra", 
							 project_state: "Cold Alpha")


Project.create(project_name: "HomeBase",
							 project_description: "Application to allow communities of renters to quickly share and digest latest listings. Hackathon app created in 12 hours. Uses Kimono API",
							 project_stack: "Sinatra, Ruby, Skeleton, HTML, CSS, JS, AJAX", 
							 project_url: "none", 
							 project_source_url: "https://github.com/dstavis/homebase-hackathon", 
							 project_img: "homebase-grab.png", 
							 project_feature_lang: "Sinatra", 
							 project_state: "Cold Alpha")

Project.create(project_name: "This Very Site!",
							 project_description: "Well, I needed a place: to let you know a smidge or so about me, a place I can practice my stack, and a metric by which to measure my progress moving forward. Viola! Three birds one site.",
							 project_stack: "Ruby On Rails, JS, jQuery, Responsive Design, Bootstrap, HTML, CSS", 
							 project_url: "http://bootcoder.herokuapp.com", 
							 project_source_url: "https://github.com/bootcoder/BootCoder_Profile", 
							 project_img: "bootcoder-grab.png", 
							 project_feature_lang: "Ruby On Rails", 
							 project_state: "Active")

# Project.create(project_name: "",
# 							 project_description: "",
#							   project_stack: "", 
# 							 project_url: "", 
# 							 project_source_url: "", 
# 							 project_img: "", 
# 							 project_feature_lang: "", 
# 							 project_state: "")
