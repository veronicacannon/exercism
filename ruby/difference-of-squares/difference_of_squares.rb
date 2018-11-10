class Squares
  def initialize(natural_number)
    @natural_number = natural_number
  end

  def square_of_sum
    (1..natural_number).sum**2
  end

  def sum_of_squares
    (1..natural_number).sum { |square| square**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  attr_reader :natural_number
end
