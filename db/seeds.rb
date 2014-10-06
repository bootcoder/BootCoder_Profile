# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.create(project_name: "TechLX (CLOSED SOURCE)",
							 project_description: "Landing page for Non-Profit Educational Outreach. Application currently under development. Contributing heavily to the front-end and testing with Rspec. Links available upon completion.", 
							 project_url: "http://www.techlx.com/", 
							 project_source_url: "closed", 
							 project_img: "techlx-grab2.png", 
							 project_feature_lang: "Rails", 
							 project_state: "Active")

Project.create(project_name: "DBCode",
							 project_description: "A DBC project written in Sinatra. The goal is to create an educational resource that can help students get un-blocked quickly. Focus on CRUD and API integration.", 
							 project_url: "http://dbcode.herokuapp.com", 
							 project_source_url: "https://github.com/bootcoder/DBCode", 
							 project_img: "dbcode.jpg", 
							 project_feature_lang: "Sinatra", 
							 project_state: "Beta")

Project.create(project_name: "MetaGame",
							 project_description: "An application to bring gamers together on a local level. This group project came together in a single week @ DBC. Our team of 5 put in over 100 hours each. GROUP HIGHFIVES!", 
							 project_url: "http://metagame.herokuapp.com", 
							 project_source_url: "https://github.com/fence-lizards-2014/MetaGame", 
							 project_img: "mg-games-grab.jpg", 
							 project_feature_lang: "RoR", 
							 project_state: "Cold Beta")

Project.create(project_name: "DoppelTwit",
							 project_description: "Early attempt at a Twitter Clone. Team of 4 constructed this application in 24 hours. Contributions include a M2M self referential schema and an excellent intro to GIT workflow. ", 
							 project_url: "http://doppeltwit.herokuapp.com/", 
							 project_source_url: "https://github.com/bootcoder/doppel-clone", 
							 project_img: "doppel-grab.png", 
							 project_feature_lang: "Sinatra", 
							 project_state: "Cold Alpha")




# Project.create(project_name: "",
# 							 project_description: "", 
# 							 project_url: "", 
# 							 project_source_url: "", 
# 							 project_img: "", 
# 							 project_feature_lang: "", 
# 							 project_state: "")
