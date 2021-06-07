module Gigasecond
  def self.from(utc_time)
    utc_time + 1_000_000_000
  end
end

module BookKeeping
  VERSION = 6
end
