# Medium Scraper

A read-only api for the Medium blogging platform to retrieve basic user information and the latest posts in one simple command. 

I built this for the sole purpose of being able to display some of my latest blog posts on my personal site. So if you're looking for similar functionality, this should work well for you. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'medium_scraper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install medium_scraper

## Usage

To retrieve an object with user and post information:

```ruby
MediumScraper::Post.latest <username>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/medium_scraper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

