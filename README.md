# Tictactoe

Tictactoe is a small utility I use to test different AI strategies against each others.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tictactoe'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tictactoe

## Usage

Basic usage is as follow. Define a game, assign players, and play.

```ruby
require 'tictactoe'

game = Tictactoe::Game.new
game.player_1 = Tictactoe::Player.new
game.player_2 = Tictactoe::Player.new
game.play
```

It really starts to get fun once you build your own player. At the very least, a player simply needs to answers to one method, `play`. It receives a set of observations as well as an array of possible actions. At its simplest, a player can look like this;

```ruby
class Player
  def play(observations, actions)
    actions.sample
  end
end
```

This player will simply randomly play any of the available actions. It doesn't really matter what the set of observations represents, but if you need to know, it consists of the state of the game represented as an array of size 9, each cell being either `nil` or filled by a player. Up to you to make this better by making the player play more intelligently.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tictactoe. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

