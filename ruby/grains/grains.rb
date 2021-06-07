# frozen_string_literal: true

# Calculate the number of grains of wheat on a chessboard given that the number
# on each square doubles.
class Grains
  BOARD_SIZE = 64
  def self.square(square_number)
    raise ArgumentError unless square_number.between?(1, BOARD_SIZE)

    square = square_number - 1
    2.pow(square)
  end

  def self.total
    total = 0
    (1..BOARD_SIZE).each do |i|
      total += self.square(i)
    end
    total
  end
end
