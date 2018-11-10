module CollatzConjecture
  def self.steps(starting_number)
    raise ArgumentError unless starting_number.positive?

    num = starting_number
    steps = 0

    until num == 1
      steps += 1
      num = if num.even?
              num /= 2
            else
              num = (num * 3) + 1
            end
    end
    steps
  end
end
