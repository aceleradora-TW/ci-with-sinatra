# CI with Sinatra

Sample app to test against different CI server providers.

## CI Providers Constraints

Aspects to take into account when testing a CI provider.

__Mandatory__: to be adopted, a provider must:
- Be free
- Allow building Sinatra apps
- Allow Heroku deployment

__Nice to have__:
- Be easy to configure
- Be well documented
- Come as a service
- Offer a good build visibility (we'll miss you Snap CI :disappointed:)


## Providers that satisfy the mandatory constraints

#### Travis CI

Pros:
- Allow building different branches (could be used along another CI)

Cons:
- Too hard to override default commands

Nice to haves:
- :white_check_mark: just a `yaml` file.
- :x: Well documented
  - Although there is a lot of docs, they are very confusing and simple things like overriding a test command are very hard to find.
- :white_check_mark: Come as a service
- :x: Offer a good build visibility (we'll miss you Snap CI :disappointed:)


#### Circle CI

Pros:
- Very fast

Cons:
- Identified `rspec` as runner, but failed to execute it through `bundle exec` with some parameters
- Why do I have to open two pages to see my build status?
- Why does it take the whole screen to show me basic build info?

Nice to haves:
- :white_check_mark: Be easy to configure
- :white_check_mark: Come as a service
- :white_check_mark: Well documented
- :x: Offer a good build visibility (we'll miss you Snap CI :disappointed:)

## Untested providers

- Shippable
- Wrecker
- Drone
- Lambda
- Codeship
- GitLab
- Heroku
- GoCD


## Rejected providers:
- __Semaphore__: paid.
- __Magnum__: Probably going to be paid. Temporarily free as it is still in beta version.
- __Bitrise__: For mobile projects

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
