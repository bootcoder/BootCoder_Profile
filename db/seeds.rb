Project.destroy_all

Project.create(project_name: "Schema Designer",
							 project_description: "The quest to build a better tool is something many developers can identify with. Mine was Schema Designer. I love visual schema but online tools are lacking key features. So I set out to make my own. I felt bad about not just contributing to a particular open source project, but I needed more than just a fancy frontend. Future goals include authoring a gem integration which allows spinning up a new rails app from the command line with models and migrations generated based on designed schema, as well as a Github integration allowing a user to import schema directly from an existing repo. This project isn’t complete, but it represents what I’m doing now so it deserves top billing here.",
						   project_stack: "Mongo Express React Redux Node",
							 project_url: "http://www.schema-designer.com",
							 project_source_url: "https://github.com/bootcoder/schema-designer",
							 project_img: "project_screenshots/grab-schema-designer.png",
							 project_feature_lang: "React, Redux",
							 project_state: "Stale Production")

Project.create(project_name: "Extra Print",
							 project_description: "A simple tool that addresses a big problem among developers, many bugs are generated due to some disconnect between what they think something is and the actual value. This gem adds a highly visual and informative wrapper to variable inspection. Also great for seeing a particular line was executed from the console. By invoking the method without an argument you get a line of random emoji’s as output.",
						   project_stack: "Ruby",
							 project_url: "https://rubygems.org/gems/extra_print/versions/1.1.5",
							 project_source_url: "https://github.com/bootcoder/extra_print",
							 project_img: "project_screenshots/grab-extra_print.png",
							 project_feature_lang: "Ruby",
							 project_state: "Active Production")

Project.create(project_name: "BootCoder.net",
							 project_description: "Needed a place: to let you know a smidge or so about me, a place I can practice a bit, and a metric by which to measure my progress moving forward. Viola! Three birds, multiple bytes. Looking back on it years later, I'm still happy with it, though I do cringe when I see the production console scroll by. Who uses that many P statements?!?",
							 project_stack: "Ruby On Rails, JS, jQuery, Responsive Design, Bootstrap, HTML, CSS",
							 project_url: "https://bootcoder.net",
							 project_source_url: "https://github.com/bootcoder/BootCoder_Profile",
							 project_img: "project_screenshots/grab-bootcoder.png",
							 project_feature_lang: "Ruby On Rails",
							 project_state: "Active Production")

Project.create(project_name: "TechLX",
							 project_description: "Landing page for Non-Profit Educational Outreach. Application currently under development. Contributing heavily to the front-end. Also implementing Rspec tests and Stripe API.",
							 project_stack: "Ruby On Rails, HTML, CSS, Bootstrap, Responsive Design, JS, jQuery, Stripe Payments API",
							 project_url: "http://www.techlx.com/",
							 project_source_url: "closed",
							 project_img: "project_screenshots/grab-techlx.png",
							 project_feature_lang: "Ruby on Rails",
							 project_state: "Production")

Project.create(project_name: "BootBadger",
							 project_description: "This emergency clone of a student superlative voting system was built in a day (during my spare time), because it had to be. Users login and see a list of peers. Add a slogan for that person or up/down vote existing slogans. At graduation we read off the slogans while introducing each student. Lots of fun ones like, ‘Most likely to say, “I’m sure we can solve this algorithm… with more boba tea”’ or ‘Most likely to hulk smash their desk when reading errors’. A quick and functional mobile first MVP, this provides a great example of getting it done when the chips are down. You can log in as me and give it a shot but you won’t be able to see my slogans because current user can’t see their own. It’s supposed to be a surprise!  Email: tom@tom.com   PW: tomtom",
						   project_stack: "React Ruby on Rails",
							 project_url: "http://bootbadger-sf.herokuapp.com",
							 project_source_url: "https://github.com/bootcoder/bootbadger-frontend",
							 project_img: "project_screenshots/grab-boot-badger.png",
							 project_feature_lang: "React",
							 project_state: "Decommissioned")

Project.create(project_name: "DBC InfoWall",
							 project_description: "Yes the screen shot is blank. No I don't have access to the old data. It *was* the first thing you see when you walk in the DBC lobby. Integrating several internal systems to render cards for upcoming events and provide tracking of multiple levels of staff onsite. Project has seen significant iteration as data sources and needs changed over time. Originally built with Rails and the rails-react gem. Later rebuilt fully decoupled using Rails / React ahead of a drastic change in API sources. Current data sourced via Google Sheets / Calendar, Deputy and Meetup API’s. ",
						   project_stack: "React Ruby on Rails",
							 project_url: "http://dbc-infowall.herokuapp.com",
							 project_source_url: "https://github.com/bootcoder/dbc-infowall-api",
							 project_img: "project_screenshots/grab-infowall.png",
							 project_feature_lang: "Rails",
							 project_state: "Decommissioned")

Project.create(project_name: "MetaGame",
							 project_description: "The original app!!! This application is designed to brings gamers together on a local level. A group project, we came together to produce this in a single week @ DBC with just enough knowledge under our belts to be dangerous. Our team of 5 put in over 100 hours each. GROUP HIGHFIVES!",
							 project_stack: "Ruby On Rails, JS, Ember, PostgreSQL Schema Design, Bootstrap, HTML, CSS, GiantBomb-Steam API",
							 project_url: "http://metagame.herokuapp.com",
							 project_source_url: "https://github.com/fence-lizards-2014/MetaGame",
							 project_img: "project_screenshots/grab-metagame.jpg",
							 project_feature_lang: "Ruby on Rails",
							 project_state: "Decommissioned")

Project.create(project_name: "Qu-est",
							 project_description: "Mobile First Application to enable Professors to assign knowledge review quizzes on the fly. Stretch goals include the ability to track student-class progress over a semester via Chart.js as well as an anonymous post quiz discussion board. SalesForce 2014 HackaThon Submission.",
						   project_stack: "Ruby On Rails, Foundation CSS, JS, jQuery, postgreSQL",
							 project_url: "http://qu-est.herokuapp.com",
							 project_source_url: "https://github.com/bootcoder/Qu-est",
							 project_img: "project_screenshots/grab-quest.png",
							 project_feature_lang: "Ruby On Rails",
							 project_state: "Decommissioned")

Project.create(project_name: "DBCode",
							 project_description: "SOLO DBC project started in June. An educational resource that helps students get un-blocked quickly. Focus on CRUD and API integration. Future plans include folding in modules from other DBC related apps to create a student resource hub.",
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


Tech.destroy_all

#<Tech img: nil, title: nil, copy: nil, rating: nil, tag_line: nil>
Tech.create(
	title: 'Ruby',
	tag_line: 'Home Base',
	copy: 'Solid foundation of my coding journey',
	img: 'techs_2025/ruby.png',
	rating: 5
)

Tech.create(
	title: 'React',
	tag_line: 'Virtual Domtastic',
	copy: 'Legit super clean components since 2013',
	img: 'techs_2025/react.png',
	rating: 3
)

Tech.create(
	title: 'Rails',
	tag_line: "Convention<hr>configuration",
	copy: 'G.O.A.T. API<br>This backend gets it done',
	img: 'techs_2025/rails.png',
	rating: 5
)

Tech.create(
	title: 'jQuery',
	tag_line: "Wizz, Bang, HAZZA!",
	copy: 'Look Mom!<br>I can do sorta magical things on the internet',
	img: 'techs_2025/jquery.png',
	rating: 4
)

Tech.create(
	title: 'Javascript',
	tag_line: "A Framework a Day...",
	copy: 'Vanilla JS skills render you agnostic',
	img: 'techs_2025/javascript.png',
	rating: 4
)

Tech.create(
	title: 'Git',
	tag_line: "No Commitment Issues Here",
	copy: 'History tells a tale.<br>Piece by piece',
	img: 'techs_2025/git.png',
	rating: 5
)

Tech.create(
	title: 'SASS',
	tag_line: "Awesome Styles",
	copy: 'Mixing in visual appeal is way easier with variables',
	img: 'techs_2025/sass.png',
	rating: 4
)

Tech.create(
	title: 'Sinatra',
	tag_line: "Don't rock the Bloat -Frank",
	copy: 'Ruby !== Rails<br>Simple, clean DSL',
	img: 'techs_2025/sinatra.png',
	rating: 5
)

Tech.create(
	title: 'Agile / SCRUM',
	tag_line: "Not Chasing Waterfalls",
	copy: 'Build → Ship →<br>Review → Iterate<br>This is the way',
	img: 'techs_2025/agile.png',
	rating: 5
)
Tech.create(
	title: 'Next.js',
	tag_line: "Prod Ready React",
	copy: 'Age old question:<br>What JS Framework comes Next?',
	img: 'techs_2025/next_js.png',
	rating: 3
)
Tech.create(
	title: 'Sidekiq',
	tag_line: "Even Batman<br>had Robin",
	copy: 'It\'s dangerous to go alone, bring a Sidekiq',
	img: 'techs_2025/sidekiq.png',
	rating: 5
)
Tech.create(
	title: 'AWS',
	tag_line: "IAM Legend",
	copy: 'EC2 / RDS / ECS / ECR / S3 / CF / VPC<br>No one knows it all',
	img: 'techs_2025/aws.png',
	rating: 3
)
Tech.create(
	title: 'NGINX',
	tag_line: "Gateway to the Internet",
	copy: 'Speed, Scale, Security, Simplified',
	img: 'techs_2025/nginx.png',
	rating: 5
)
Tech.create(
	title: 'REST APIs',
	tag_line: "Make CRUD Cool Again",
	copy: 'A uniform interface a day Keeps the hackers at bay',
	img: 'techs_2025/rest_api.png',
	rating: 5
)
Tech.create(
	title: 'Bash / Shell',
	tag_line: "Jason Bourne Again",
	copy: 'Solving life\'s little problems... One Shell Script at a time',
	img: 'techs_2025/bash_shell.png',
	rating: 3
)
Tech.create(
	title: 'oAuth',
	tag_line: "Awake feeling refresh_token",
	copy: 'Can\'t auth via blood marker just yet so...<br>Next best thing',
	img: 'techs_2025/oauth.png',
	rating: 4
)
Tech.create(
	title: 'RSpec',
	tag_line: "Don\'t Mock my Stubby Spy",
	copy: 'Refactoring with a well tested green suite ... So Satisfying',
	img: 'techs_2025/rspec.png',
	rating: 4
)
Tech.create(
	title: 'SSH',
	tag_line: "No HomeLab<br>No Problem",
	copy: 'Remote access:<br>The \'keys\' to the castle',
	img: 'techs_2025/ssh.png',
	rating: 5
)
Tech.create(
	title: 'CI / CD',
	tag_line: "Ship it fast<br>Ship it good",
	copy: 'Who has time to run the entire test suite locally these days?',
	img: 'techs_2025/ci_cd.png',
	rating: 4
)
Tech.create(
	title: 'MarkDown',
	tag_line: "Up Your Doc Game",
	copy: 'Yeilds longterm dividends for both product & team',
	img: 'techs_2025/markdown.png',
	rating: 5
)
Tech.create(
	title: 'postgreSQL',
	tag_line: "Relationships are easy",
	copy: 'When the JOIN hits your eye like GROUP_BY ...That\'s Aurora',
	img: 'techs_2025/postgresql.png',
	rating: 3
)
Tech.create(
	title: 'TypeScript',
	tag_line: "JS that Scales w/ Confidence",
	copy: 'Modern JS: Now with 100% less undefined',
	img: 'techs_2025/typescript.png',
	rating: 2
)
Tech.create(
	title: 'Docker',
	tag_line: "It Work's on my Machine",
	copy: 'Security Tip: Containers, Don\'t Contain',
	img: 'techs_2025/docker.png',
	rating: 3
)
Tech.create(
	title: 'NewRelic',
	tag_line: "Complexity meets Clarity",
	copy: 'Built for uptime Optimized for excellence',
	img: 'techs_2025/newrelic.png',
	rating: 4
)
Tech.create(
	title: 'VirtualBox',
	tag_line: "One Machine Every OS",
	copy: 'When you absolutley, positivley must test Windows...',
	img: 'techs_2025/virtual_box.png',
	rating: 3
)
Tech.create(
	title: 'Jira',
	tag_line: "Tickets Please",
	copy: 'Seriously, Why Epics instead of Marathons...?',
	img: 'techs_2025/jira.png',
	rating: 3
)
Tech.create(
	title: 'Python',
	tag_line: "Everything\'s Zen",
	copy: 'First Impression:<br>Whitespace enforced Ruby... I\'m in love',
	img: 'techs_2025/python.png',
	rating: 3
)
Tech.create(
	title: 'Linux',
	tag_line: "Do it yourself!",
	copy: 'So many flavors<br>Gotta try em all',
	img: 'techs_2025/linux.png',
	rating: 3
)
