class Luhn
  def self.valid?(str)
    str
      .gsub(/\s/, '')
      .tap { |stripped_str| return false unless stripped_str[/\A\d\d+\z/] }
      .chars
      .reverse
      .map.with_index { |digit, index| index.odd? ? digit.to_i * 2 : digit.to_i }
      .map { |digit| digit > 9 ? digit - 9 : digit }
      .sum % 10 == 0
  end
end