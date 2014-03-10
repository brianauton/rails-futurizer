## rails-futurizer
[![Gem Version](https://badge.fury.io/rb/rails-futurizer.png)](http://badge.fury.io/rb/rails-futurizer)
[![Build Status](https://travis-ci.org/brianauton/rails-futurizer.png?branch=master)](https://travis-ci.org/brianauton/rails-futurizer)
[![Code Climate](https://codeclimate.com/github/brianauton/rails-futurizer.png)](https://codeclimate.com/github/brianauton/rails-futurizer)

Drag your legacy Rails apps into the future a little more easily.

### Introduction

Upgrading a legacy Rails app can be a frustrating process. Ideally,
you'd like to break the upgrade up into as many discrete steps as
possible: upgrade the Ruby version here, a couple gems there, and
check the code into master with all tests passing at each step.

But these intermediate steps often involve version combinations that
are not well supported or tested (e.g. Ruby 2 + Rails 2), and a lot of
time is typically spent tracking down unexpected test failures and
cryptic error messages that result from these dangerous version
combinations.

Rails-futurizer makes the upgrade process quicker and easier by
automatically patching some of these bugs and giving clear warnings
about the cause of others. See below for a list of all patches and
warnings available.

### What it doesn't do

It doesn't backport any features or syntax from newer Ruby/Rails
versions to older versions. Upgrade your apps; don't keep developing
them against old versions.

### Requirements

  * Ruby 1.8.7 or greater

  * RubyGems 1.1.0 or greater

  * Nothing else, although rails-futurizer won't do anything unless
    it's installed alongside a version of Rails for which some
    applicable fixes are available.

### Installation

Install the rails-futurizer gem alongside rspec in your Gemfile.

    gem "rails-futurizer"

That's it! Rails-futurizer will automatically activate any fixes and
warnings that are applicable to the currently installed versions of
Ruby and Rails, and ignore those that are not applicable.

### Bugs Patched

  * When Rails 2.3 or older is used with Ruby 2.0 or newer, parameter
    filtering in ActionController silently fails, outputting all
    parameters to the log regardless of filter
    settings. Rails-futurizer will automatically patch this bug for
    Rails 2.2.1 or newer.
