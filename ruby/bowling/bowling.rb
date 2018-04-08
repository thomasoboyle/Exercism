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
    first_in_frame = 0
    while frame < 10
      if @rolls[first_in_frame] == 10
        score += 10 + @rolls[first_in_frame + 1] + @rolls[first_in_frame + 2]
        first_in_frame += 1
      elsif spare?(first_in_frame)
        score += 10 + @rolls[first_in_frame + 2]
        first_in_frame += 2
      else
        score += @rolls[first_in_frame] + @rolls[first_in_frame + 1]
        first_in_frame += 2
      end
      frame += 1
    end
    score
  end

  def spare?(first_in_frame)
    @rolls[first_in_frame] + @rolls[first_in_frame + 1] == 10
  end
end
