Project.create(project_name: "Schema Designer",
							 project_description: "The quest to build a better tool is something many developers can identify with. Currently, mine is Schema Designer. I love visual schema but online tools are lacking key features. So I set out to make my own. I felt bad about not just contributing to a particular open source project, but I needed more than just a fancy frontend. Future goals include authoring a gem integration which allows spinning up a new rails app from the command line with models and migrations generated based on designed schema, as well as a Github integration allowing a user to import schema directly from an existing repo. This project isn’t complete, but it represents what I’m doing now so it deserves top billing here.",
						   project_stack: "Mongo Express React Redux Node",
							 project_url: "http://www.schema-designer.com",
							 project_source_url: "https://github.com/bootcoder/schema-designer",
							 project_img: "project_screenshots/grab-schema-designer.png",
							 project_feature_lang: "React, Redux",
							 project_state: "Active Release")

Project.create(project_name: "Extra Print",
							 project_description: "A simple tool that addresses a big problem among developers, many bugs are generated due to some disconnect between what they think something is and the actual value. This gem adds a highly visual and informative wrapper to variable inspection. Also great for seeing a particular line was executed from the console. By invoking the method without an argument you get a line of random emoji’s as output.",
						   project_stack: "Ruby",
							 project_url: "http://www.schema-designer.com",
							 project_source_url: "https://github.com/bootcoder/extra_print",
							 project_img: "project_screenshots/grab-extra_print.png",
							 project_feature_lang: "Ruby",
							 project_state: "Production")

Project.create(project_name: "DBC InfoWall",
							 project_description: "It’s the first thing you see when you walk in the DBC lobby. This app integrates with several internal systems to render cards for upcoming events and provide tracking of multiple levels of staff onsite. Project has seen significant iteration as data sources and needs changed over time. Originally built with Rails and the rails-react gem. Later rebuilt fully decoupled using Rails / React ahead of a drastic change in API sources. Current data sourced via Google Sheets / Calendar, Deputy and Meetup API’s. ",
						   project_stack: "React Ruby on Rails",
							 project_url: "http://dbc-infowall.herokuapp.com",
							 project_source_url: "https://github.com/bootcoder/dbc-infowall-api",
							 project_img: "project_screenshots/grab-infowall.png",
							 project_feature_lang: "Rails",
							 project_state: "Production")

Project.create(project_name: "BootBadger",
							 project_description: "This emergency clone of a student superlative voting system was built in a day (during my spare time), because it had to be. Users login and see a list of peers. Add a slogan for that person or up/down vote existing slogans. At graduation we read off the slogans while introducing each student. Lots of fun ones like, ‘Most likely to say, “I’m sure we can solve this algorithm… with more boba tea”’ or ‘Most likely to hulk smash their desk when reading errors’. A quick and functional mobile first MVP, this provides a great example of getting it done when the chips are down. You can log in as me and give it a shot but you won’t be able to see my slogans because current user can’t see their own. It’s supposed to be a surprise!  Email: tom@tom.com   PW: tomtom",
						   project_stack: "React Ruby on Rails",
							 project_url: "http://bootbadger-sf.herokuapp.com",
							 project_source_url: "https://github.com/bootcoder/bootbadger-frontend",
							 project_img: "project_screenshots/grab-extra_print.png",
							 project_feature_lang: "React",
							 project_state: "Production")

Project.create(project_name: "MetaGame",
							 project_description: "The original app!!! This application is designed to brings gamers together on a local level. A group project, we came together to produce this in a single week @ DBC with just enough knowledge under our belts to be dangerous. Our team of 5 put in over 100 hours each. GROUP HIGHFIVES!",
							 project_stack: "Ruby On Rails, JS, Ember, PostgreSQL Schema Design, Bootstrap, HTML, CSS, GiantBomb-Steam API",
							 project_url: "http://metagame.herokuapp.com",
							 project_source_url: "https://github.com/fence-lizards-2014/MetaGame",
							 project_img: "project_screenshots/grab-metagame.jpg",
							 project_feature_lang: "Ruby on Rails",
							 project_state: "Cold Beta")

Project.create(project_name: "TechLX",
							 project_description: "Landing page for Non-Profit Educational Outreach. Application currently under development. Contributing heavily to the front-end. Also implementing Rspec tests and Stripe API.",
							 project_stack: "Ruby On Rails, HTML, CSS, Bootstrap, Responsive Design, JS, jQuery, Stripe Payments API",
							 project_url: "http://www.techlx.com/",
							 project_source_url: "closed",
							 project_img: "project_screenshots/grab-techlx.png",
							 project_feature_lang: "Ruby on Rails",
							 project_state: "Active")

Project.create(project_name: "Qu-est",
							 project_description: "Mobile First Application to enable Professors to assign knowledge review quizzes on the fly. Stretch goals include the ability to track student-class progress over a semester via Chart.js as well as an anonymous post quiz discussion board. SalesForce 2014 HackaThon Submission.",
						   project_stack: "Ruby On Rails, Foundation CSS, JS, jQuery, postgreSQL",
							 project_url: "http://qu-est.herokuapp.com",
							 project_source_url: "https://github.com/bootcoder/Qu-est",
							 project_img: "project_screenshots/grab-quest.png",
							 project_feature_lang: "Ruby On Rails",
							 project_state: "Active Alpha")

Project.create(project_name: "DBCode",
							 project_description: "SOLO DBC project started in June. The goal is to create an educational resource that can help students get un-blocked quickly. Focus on CRUD and API integration. Future plans include folding in modules from other DBC related apps to create a student resource hub.",
							 project_stack: "Sinatra, Ruby, JS, CSS, HTML, Bootstrap, Oauth",
							 project_url: "http://dbcode.herokuapp.com",
							 project_source_url: "https://github.com/bootcoder/DBCode",
							 project_img: "project_screenshots/grab-dbcode.jpg",
							 project_feature_lang: "Sinatra",
							 project_state: "Beta")

Project.create(project_name: "DoppelTwit",
							 project_description: "Early attempt at a Twitter Clone. Team of 4 constructed this application in 24 hours. Contributions include a M2M self referential schema and an excellent intro to GIT work flow. ",
							 project_stack: "Sinatra, Ruby, SQLite Self Referential M2M, Basic User Authentication",
							 project_url: "http://doppeltwit.herokuapp.com/",
							 project_source_url: "https://github.com/bootcoder/doppel-clone",
							 project_img: "project_screenshots/grab-doppel.png",
							 project_feature_lang: "Sinatra",
							 project_state: "Cold Alpha")


Project.create(project_name: "HomeBase",
							 project_description: "Application to allow communities of renters to quickly share and digest latest listings. Hackathon app created in 12 hours. Uses Kimono API",
							 project_stack: "Sinatra, Ruby, Skeleton, HTML, CSS, JS, AJAX",
							 project_url: "none",
							 project_source_url: "https://github.com/dstavis/homebase-hackathon",
							 project_img: "project_screenshots/grab-homebase.png",
							 project_feature_lang: "Sinatra",
							 project_state: "Cold Alpha")

Project.create(project_name: "This Very Site!",
							 project_description: "Well, I needed a place: to let you know a smidge or so about me, a place I can practice my coding, and a metric by which to measure my progress moving forward. Viola! Three birds one site. Looking back on it years later, I'm still happy with it, though I do cringe when I see the production console scroll by. Who uses that many P statements?!?",
							 project_stack: "Ruby On Rails, JS, jQuery, Responsive Design, Bootstrap, HTML, CSS",
							 project_url: "http://bootcoder.herokuapp.com",
							 project_source_url: "https://github.com/bootcoder/BootCoder_Profile",
							 project_img: "project_screenshots/grab-bootcoder.png",
							 project_feature_lang: "Ruby On Rails",
							 project_state: "Active")
