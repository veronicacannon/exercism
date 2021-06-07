# list series of strings
class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(substring_length)
    raise ArgumentError if substring_length > @digits.length

   @digits.chars.each_cons(substring_length).map(&:join)
  end
end
