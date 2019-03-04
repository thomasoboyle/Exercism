require 'pry'

class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.max(3)
  end

  def report
    if latest == personal_best
      "Your latest score was #{latest}. That's your personal best!"
    else
      "Your latest score was #{latest}. That's #{from_best} short of your personal best!"
    end
  end

  def from_best
    personal_best - latest
  end
end
