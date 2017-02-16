# CI with Sinatra

Sample app to test against different CI server providers. Like the following:

- :x: Travis:
  - :white_check_mark: Allow building different branches (could be used along another CI)
  - :x: Too hard to override default commands
  - :x: Build steps don't make sense
- Circle
  - :x: Identified `rspec` as runner, but fail to execute it through `bundle exec` with parameters
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
- Semaphore

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
