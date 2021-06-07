# Manage a game player's High Score list
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

  def personal_top_three
    scores.max(3).sort.reverse
  end

  def latest_is_personal_best?
    latest == personal_top_three.first
  end
end
