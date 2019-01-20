require 'pry'

class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
   scores[-1] 
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.sort!
    scores.reverse!
    scores[0..2]
  end

  def report
    if self.latest == self.personal_best 
      "Your latest score was #{self.latest}. That's your personal best!"
    else
      "Your latest score was #{self.latest}. That's #{from_best} short of your personal best!"
    end
  end

  def from_best
    self.personal_best - self.latest
  end
end
