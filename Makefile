install:
	bundle check || bundle install

run:install
	bundle exec rackup

r:install
	bundle exec rerun 'rackup'

test:
	bundle exec rspec
