# use First Principle to convert string to binary
class Binary
  def self.to_decimal(str)
    raise ArgumentError unless str =~ /^[01]*$/

    str.chars.reverse_each.map.with_index { |c, i| c.to_i * 2.pow(i) }.sum
  end
end
