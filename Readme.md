# CI with Sinatra

Sample app to test against different CI server providers.

## CI status by provider

Circle CI:
[![CircleCI](https://circleci.com/gh/othman853/ci-with-sinatra/tree/master.svg?style=svg)](https://circleci.com/gh/othman853/ci-with-sinatra/tree/master)

Travis CI:
[![Build Status](https://travis-ci.org/othman853/ci-with-sinatra.svg?branch=master)](https://travis-ci.org/othman853/ci-with-sinatra)

## CI Providing Constraints

Aspects to take into account when testing a CI provider.

__Mandatory__: to be adopted, a provider must:
- Be free
- Allow building Sinatra apps
- Allow Heroku deployment

__Nice to have__:
- Easily configurable
- Be well documented
- Come as a service
- Intuitive build visibility UI (we'll miss you Snap CI :disappointed:)


## Providers that satisfy the mandatory constraints

__Note:__ Some of these providers might still be on test, check their status.

### Travis CI

Status: `testing`

Pros:
- Allow building different branches (could be used along another CI)

Cons:
- Too hard to override default commands

Nice to haves:
- Easily configurable
- Well documented
- Come as a service



### Circle CI

Status: `testing`

Pros:
- Very fast

Cons:
- Identified `rspec` as runner, but failed to execute it through `bundle exec` with some parameters
- Why do I have to open two pages to see my build status?
- Why does it take the whole screen to show me basic build info?

Nice to haves:
- Easily configurable
- Come as a service
- Well documented


### Shippable

Status: `testing`

Pros: None yet


Cons:
- Seems like an immature project
- Slightly confusing UI

Nice to haves:
- Come as a service


## Untested providers

- Wrecker
- Drone
- Lambda
- Codeship
- GitLab
- Heroku
- GoCD


## Rejected providers
- __Semaphore__: paid.
- __Magnum__: Probably going to be paid. Temporarily free as it is still in beta version.
- __Bitrise__: For mobile projects

# Project configuration

Stack:
- Ruby 2.3.0
- Sinatra
- Bundler
- RSpec

### How it was set up

``` sh
gem install bundler
mkdir ci-with-sinatra && cd ci-with-sinatra && bundle init
echo 'gem "sinatra" >> Gemfile'
```

## Running
- `make run`

## Testing
- `make test`
