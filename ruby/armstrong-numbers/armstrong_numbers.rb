# frozen-string_literal: true

# determine whether a number is an Armstrong number
class ArmstrongNumbers
  def self.include?(number)
    digits = number.to_s.chars.map(&:to_i)
    number == digits.sum { |digit| digit.pow(digits.length) }
  end
end