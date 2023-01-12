class AssemblyLine
  CARS_PRODUCED_PER_HOUR = 221.freeze

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    CARS_PRODUCED_PER_HOUR * @speed * production_success_rate
  end

  def production_success_rate
    case @speed
    when 1..4
      1 # 100 percent
    when 5..8
      0.9 # 90 percent
    when 9
      0.8 # 80 percent
    when 10
      0.77 # 70 percent
    else
      raise 'Invalid speed'
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
