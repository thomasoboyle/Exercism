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
      "#{latest_score} That's your personal best!"
    else
      "#{latest_score} That's #{from_best} short of your personal best!"
    end
  end

  def latest_score
    "Your latest score was #{latest}."
  end

  def from_best
    personal_best - latest
  end
end
