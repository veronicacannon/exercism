# Return series of number from string of digits
class Series
  def initialize(digits)
    @digits = digits
  end

  # build a substring from digits and provided length
  def slices(substring_length)
    digits_length = @digits.length
    raise ArgumentError if substring_length > digits_length

    results = []
    digits_length.times do |i|
      break if i + substring_length > digits_length

      results.push(@digits[i, substring_length])
    end
    return results
  end
end
