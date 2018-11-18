class HighScores
    attr_reader :scores
    def initialize(scores)
        @scores = scores
    end
    
    def latest
        scores.last
    end
    
    def highest
        scores.max
    end
    
    def top
        scores.max(3).sort.reverse
    end
    
    def report
        if self.latest == self.top.first
            "Your latest score was #{self.latest}. That's your personal best!"
        else
            "Your latest score was #{self.latest}. That's #{(self.top.first - self.latest).to_s} short of your personal best!"
        end
    end
end
