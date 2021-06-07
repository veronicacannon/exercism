# triangle challenge
class Triangle
  def initialize(array_of_sides)
    @sides = array_of_sides
  end

  def equilateral?
    return false if invalid_triangle?
    @sides.uniq.length <= 1
  end

  def isosceles?
    return false if invalid_triangle?
    @sides.uniq.length <= 2
  end

  def scalene?
    return false if invalid_triangle?
    @sides.uniq.length == 3
  end

  private

  def invalid_triangle?
    x, y, z = @sides.sort
    z > x + y || @sides.include?(0)
  end
end
