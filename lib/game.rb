module Tictactoe
  class Game
    WINS = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
    ]

    attr_accessor :player_1, :player_2

    attr_reader :board

    def initialize
      @board = Array.new(9, nil)
    end

    def step
      if done?
        raise StandardError.new('Game already completed')
      end

      curr = current_player.next
      move = curr.play(board.dup)

      if move > 8 || move < 0 || board[move]
        raise StandardError.new('Invalid move')
      end

      board[move] = curr
    end

    def play
      unless player_1 && player_2
        raise StandardError.new('Invalid number of players')
      end

      until done? do
        step
      end

      score
    end

    def score
      if winner?
        if winner == player_1
          player_1.score(1)
          player_2.score(0)
        else
          player_1.score(0)
          player_2.score(1)
        end
      elsif draw?
        player_1.score(0.5)
        player_2.score(0.5)
      end
    end

    def winner
      return @winner if defined?(@winner)

      WINS.each do |cells|
        values = board.values_at(*cells)

        players.each do |player|
          if values.all? { |value| value == player }
            return(@winner = player)
          end
        end
      end

      nil
    end

    def players
      [player_1, player_2].compact
    end

    def current_player
      @current_player ||= players.shuffle.cycle
    end

    def done?
      winner? || draw?
    end

    def winner?
      !!winner
    end

    def draw?
      board.none?(&:nil?)
    end
  end
end
