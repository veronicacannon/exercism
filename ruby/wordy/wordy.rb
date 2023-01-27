class WordProblem
  OPERATIONS = {
    "What is" => -> (start, operand) { operand },
    "plus" => -> (start, operand) { start + operand },
    "minus" => -> (start, operand) { start - operand },
    "multiplied by" => -> (start, operand) { start * operand },
    "divided by" => -> (start, operand) { start / operand },
  }
  def initialize(problem)
    @problem = problem
  end
  def answer
    raise ArgumentError if  parsed.size <= 1
    parsed.reduce(0) { |acc,(op, val)|
      OPERATIONS[op].call(acc, val.to_i)
    }
  end
  private
  def parsed
    problem.scan(/(#{OPERATIONS.keys.join("|")}) ([-\d]+)/)
  end
  attr_reader :problem
end