# PaperTrail::Queries

Query methods for your `PaperTrail::Version` model.

## Installation

```ruby
# Gemfile
gem 'paper_trail-queries'
```

## Usage

```ruby
# config/initializers/paper_trail.rb
module PaperTrail
  class Version
    extend PaperTrail::Queries
  end
end
```

## Contributing

```
bundle exec rubocop
bundle exec rspec
```
