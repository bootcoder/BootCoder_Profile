# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.create(project_name: "DBCode",
							 project_description: "This project is currently being redeveloped under rails (previously Sinatra). The goal is to create an educational resource that can help students get un-blocked quickly.", 
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

Project.create(project_name: "TechLX",
							 project_description: "Educational Outreach Site currently under development. I contributed heavily to the front-end and testing with Rspec. Links available upon completion.", 
							 project_url: "#", 
							 project_source_url: "", 
							 project_img: "techlx-grab.png", 
							 project_feature_lang: "Rails", 
							 project_state: "Active")


# Project.create(project_name: "",
# 							 project_description: "", 
# 							 project_url: "", 
# 							 project_source_url: "", 
# 							 project_img: "", 
# 							 project_feature_lang: "", 
# 							 project_state: "")
