## rails-futurizer
[![Gem Version](https://badge.fury.io/rb/rails-futurizer.png)](http://badge.fury.io/rb/rails-futurizer)
[![Build Status](https://travis-ci.org/brianauton/rails-futurizer.png?branch=master)](https://travis-ci.org/brianauton/rails-futurizer)
[![Code Climate](https://codeclimate.com/github/brianauton/rails-futurizer.png)](https://codeclimate.com/github/brianauton/rails-futurizer)

Drag your legacy Rails apps into the future a little less painfully.

### Requirements

  * Ruby 1.8.7 or greater

  * RubyGems v1.1.0 or greater

  * Nothing else, although rails-futurizer won't do anything unless
    it's installed alongside a version of Rails for which some
    applicable fixes are available.

### Getting Started

Install the rails-futurizer gem alongside rspec in your gemfile.

    gem "rails-futurizer"

That's it! Any applicable fixes will be activated automatically, and
any that aren't applicable because of your current version of Rails,
Ruby, etc. will be ignored.

### Fixes Included

  * When using Rails 2.3 or older with Ruby 2.0 or newer,
    ActionController's filter_parameters behavior will silently fail
    and output all parameters to the log regardless of filtering
    options selected. Rails-futurizer will automatically patch this
    bug if you're using Rails 2.2.1 or newer.
