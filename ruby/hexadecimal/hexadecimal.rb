=begin
Write your code for the 'Hexadecimal' exercise in this file. Make the tests in
`hexadecimal_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hexadecimal` directory.
=end

class Hexadecimal
  DEC = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
          "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9,
          "A" => 10, "B" => 11, "C" => 12, "D" => 13, "E" => 14, "F" => 15}.freeze

  def initialize(str)
    @str = str
  end

  def to_decimal
    return 0 unless @str.match?(/^\h+$/)
    @str.chars.reverse_each.map.with_index do |c, i|
      DEC[c.upcase] * 16.pow(i)
    end.sum
  end
end
