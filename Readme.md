# CI with Sinatra

Sample app to test against different CI server providers. Like the following:

- Travis
- Circle
- Shippable
- Wrecker
- Drone
- Lambda
- Codeship
- GitLab
- Heroku
- Bitrise
- Magnum
- GoCD

### Step by step sinatra setup

Bundle:
``` sh
gem install bundler
mkdir ci-with-sinatra && cd ci-with-sinatra && bundle init
echo 'gem "sinatra" >> Gemfile'
bundle install
```

## Commands

- `rackup`: run
