# DjCron

Enqueues DelayedJob jobs easily from cron without loading the full Rails environment.

## Installation

Add this line to your application's Gemfile:

    gem 'dj_cron'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dj_cron

## Usage

`djc-enqueue FooJob BarJob ...`.

`FooJob` and `BarJob` etc. should be DelayedJob jobs in your `app/jobs` directory.

## Contributing

1. Fork it ( https://github.com/sassafrastech/dj_cron/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
