# stellosite_rails

found at: https://gat0rama.herokuapp.com/


# Installation

1. Add a .evn in root directory with contents
DEVELOPMENT_SECRET_KEY_BASE=<add_your_secret_development_key>
TEST_SECRET_KEY_BASE=<add_your_secret_test_key>

2. Run in one terminal 
	pug . -E html.erb -P -w (to autocompile pug in html files)
	
3. Start Server with
	rails s -b 0.0.0.0 -p 1111 

4. for development add this to the hosts file (needs it for disqus to work)
	127.0.0.1 gat0rama.com
	
5. In browser: gat0rama.com:3000
