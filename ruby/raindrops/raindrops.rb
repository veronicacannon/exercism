module Raindrops
  DECODE =
    {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }.freeze

  def self.convert(num)
    raindrop_string = DECODE.select { |drop, _sound| (num % drop).zero? }
                            .values
                            .join
    raindrop_string.empty? ? num.to_s : raindrop_string
  end
end
