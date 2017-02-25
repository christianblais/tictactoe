require "tictactoe/version"
require "game"
require "player"

module Tictactoe
  def self.display(game)
    symbols = Hash[game.players.zip(['X', 'O'])]

    game.board.each_slice(3) do |row|
      puts "#{fill(row[0], symbols)} #{fill(row[1], symbols)} #{fill(row[2], symbols)}"
    end
  end

  def self.fill(owner, symbols)
    symbols.each do |player, symbol|
      if owner == player
        return symbol
      end
    end

    "-"
  end
end
