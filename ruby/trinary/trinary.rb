# use First Principle to convert string to trinary
class Trinary
  def initialize(str)
    @str = str
  end

  def to_decimal
    return 0 if @str =~ /[^012]/
    @str.chars.reverse_each.map.with_index { |e, i| e.to_i * 3**i }.sum
  end
end
