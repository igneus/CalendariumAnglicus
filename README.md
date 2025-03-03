# CalendariumAnglicus

This repository contains code of a Ruby gem implementing Catholic liturgical calendar
of the Ordinariate of the Chair of St. Peter (Anglican Patrimony).

This project is based on the most excellent CalendariumRomanum.

## Installation

**The instructions below won't work, the gem has not been released yet.**

Add this line to your application's Gemfile:

```ruby
gem 'calendarium-anglicus'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install calendarium-anglicus

*** NOTE: THE REST HAS NOT BEEN PORTED FROM THE ORIGINAL TEMPLATE czech_old_catholic_calendar***
## Usage

Public API is almost exactly the same as that of [calendarium-romanum][caro], just with a different
name of the top-level module. Please refer to [calendarium-romanum][caro]'s documentation.

Typical usage may look like this:

```ruby
require 'czech_old_catholic_calendar'

# GENERAL can be replaced with PRAHA or SUMPERK in order to get proper celebrations
# of the parishes of Prague and Sumperk, respectively
sanctorale = CzechOldCatholicCalendar::Data::GENERAL.load_with_parents

calendar = CzechOldCatholicCalendar::PerpetualCalendar.new(sanctorale: sanctorale)

# retrieve liturgical details of today
day = calendar[Date.today]
```

## Status

Very incomplete. So far I haven't found any real formal specification of the calendar
and I'm not even sure if it exists. A lot can probably be deduced from the missal,
but I don't own it and libraries are closed, so it will take some time.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

[starokatolici]: https://www.starokatolici.cz/
[caro]: https://github.com/igneus/calendarium-romanum
