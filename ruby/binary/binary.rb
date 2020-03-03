# use First Principle to convert string to binary
class Binary
  def self.to_decimal(str)
    raise ArgumentError unless str =~ /^[01]*$/
    str.chars.reverse_each.map.with_index { |e, i| e.to_i * 2**i }.sum
  end
end
