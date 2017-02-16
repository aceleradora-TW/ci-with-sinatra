# CI with Sinatra

Sample app to test against different CI server providers.

## CI status by provider

Circle CI:
[![CircleCI](https://circleci.com/gh/othman853/ci-with-sinatra/tree/master.svg?style=svg)](https://circleci.com/gh/othman853/ci-with-sinatra/tree/master)

Travis CI:
[![Build Status](https://travis-ci.org/othman853/ci-with-sinatra.svg?branch=master)](https://travis-ci.org/othman853/ci-with-sinatra)

GitLab Pipeline:
![Build Status](https://gitlab.com/othman853/ci-with-sinatra/badges/master/build.svg)

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
- Didactical build UI (clear steps of the build process visible to humans)


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
- UI is not very didactical:
  - Build status info is segregated between two pages
  - Why does it take the whole screen to show me basic build info?

Nice to haves:
- Easily configurable
- Come as a service
- Well documented

### GitLab Pipelines

Status: `testing`

Pros:
- Easy to integrate with
- Easy to configure (a little confusing, but not rocket science)

Cons:
- We must migrate to GitLab
- UI Requires manual refresh
- Very slow (takes more than two minutes to run unit tests)

Nice to haves:
- Very Easily configurable
- Come as a service
- Very Well documented

### Wercker CI

Status: `testing`

Pros:
- Easy to integrate with
- Easy to configure

Cons: None yet

Nice to haves:
- Very Easily configurable
- Come as a service


### Shippable

Status: `rejected`

Pros: None yet

Cons:
- Seems like an immature project
- Slightly confusing UI
- Slightly confusing docs

Nice to haves:
- Come as a service


## Untested providers
- Drone
- Lambda
- Codeship
- Heroku
- GoCD


## Rejected providers
- __Shippable__: Too complex and confusing.
- __Semaphore__: No free plan.
- __Magnum__: Only free while it is in beta.
- __Bitrise__: For mobile projects

# Project configuration

Stack:
- Ruby 2.3.0
- Sinatra
- Bundler
- RSpec
- Make

### How it was set up

``` sh
gem install bundler
mkdir ci-with-sinatra && cd ci-with-sinatra && bundle init
echo 'gem "sinatra"' >> Gemfile
```

## Running
- `make run`
- `make r` (hot reloads)

## Testing
- `make test`
