module Tictactoe
  class Player
    def play(board)
      board.map.with_index do |value, index|
        index unless value
      end.compact.sample
    end

    def score(point)
    end

    def name
      "#{self.class.name} #{self.object_id}"
    end

    def inspect
      self.name
    end
  end
end
