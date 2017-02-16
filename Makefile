install:
	bundle check || bundle install

run:install
	rackup

test:
	bundle exec rspec
