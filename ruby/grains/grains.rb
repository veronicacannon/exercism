# grains chessboard square
class Grains
  def self.square(ordinal)
    raise ArgumentError if ordinal > 64 || ordinal < 1

    2**ordinal.pred
  end

  def self.total
    2**64 - 1
  end
end
