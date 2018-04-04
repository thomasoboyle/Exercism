class Game
  require 'pry'
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    score = 0
    frame = 0
    i = 0
    while frame < 10
      if @rolls[i] + @rolls[i + 1] == 10
        score += 10 + @rolls[i + 2]
        i += 2
      else
        score += @rolls[i] + @rolls[i + 1]
        i += 2
      end
      frame += 1
    end
    score
  end
end
