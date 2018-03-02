# ActiveRecord::Pick

Backport of `ActiveRecord::Calculations#pick` for Rails 5 and 4.2 applications.
https://github.com/rails/rails/pull/31941

[![Build Status](https://travis-ci.org/yujideveloper/recite_csv.svg?branch=master)](https://travis-ci.org/yujideveloper/recite_csv)

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

