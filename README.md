# stellosite_rails

location: https://gat0rama.herokuapp.com/

for development add this to the hosts file (needs it for disqus to work)
	gat0rama.com:3000

# Installation

1. Add a .evn in root directory with contents
DEVELOPMENT_SECRET_KEY_BASE=<add_your_secret_development_key>
TEST_SECRET_KEY_BASE=<add_your_secret_test_key>

2. Run in one terminal 
	pug . -E html.erb -P -w (to autocompile pug in html files)
	
3. Start Server with
	rails s -b 0.0.0.0 -p 1111 