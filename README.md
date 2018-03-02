# ActiveRecord::Pick

Backport of `ActiveRecord::Calculations#pick` for Rails 5 and 4.2 applications.
https://github.com/rails/rails/pull/31941

[![Gem Version](https://badge.fury.io/rb/activerecord-pick.svg)](https://badge.fury.io/rb/activerecord-pick)
[![Build Status](https://travis-ci.org/yujideveloper/activerecord-pick.svg?branch=master)](https://travis-ci.org/yujideveloper/activerecord-pick)
[![Maintainability](https://api.codeclimate.com/v1/badges/69b57b07aa990b2b5965/maintainability)](https://codeclimate.com/github/yujideveloper/activerecord-pick/maintainability)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activerecord-pick'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord-pick

## Usage

``` ruby
Account.order(:id).pick(:email) #=> "account@example.com"
Account.order(:id).pick(:email, :name) #=> ["account@example.com", "Account Name"]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/activerecord-pick.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

