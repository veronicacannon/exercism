# use First Principle to convert string to trinary
class Trinary
  def initialize(str)
    @str = str
  end

  def to_decimal
    return 0 if @str =~ /[^012]/
    @str.chars.reverse_each.map.with_index { |c, i| c.to_i * 3.pow(i) }.sum
  end
end
