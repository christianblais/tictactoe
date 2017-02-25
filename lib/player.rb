module Tictactoe
  class Player
    def play(observations, actions)
      actions.sample
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
