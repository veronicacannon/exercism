class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @minute = minute % 60
    @hour = ((minute / 60) + hour) % 24
   end

  def to_s
    format('%02d:%02d', @hour, @minute)
  end

  def +(clock)
    hour = self.hour + clock.hour
    minute = self.minute + clock.minute
    Clock.new(hour: hour, minute: minute)
  end

  def -(clock)
    hour = self.hour - clock.hour
    minute = self.minute - clock.minute
    Clock.new(hour: hour, minute: minute)
  end

  def ==(clock)
    self.to_s == clock.to_s
  end
end