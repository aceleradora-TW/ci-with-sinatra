install:
	bundle check || bundle install

run:install
	bundle exec rackup

r:install
	bundle exec rerun 'rackup'

test-unit:
	bundle exec rspec spec/unit

push:
	git push origin master
	git push lab master
