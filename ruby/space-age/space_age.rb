class SpaceAge
  SECONDS_PER_YEAR_EARTH = 31_557_600.0
  def initialize(seconds)
    @seconds = seconds
    @calculate_years = lambda { |orbital_years| (@seconds / (SECONDS_PER_YEAR_EARTH * orbital_years)).round(2) }
  end
  def on_earth
    @calculate_years.call(1)
  end
  def on_mars
    @calculate_years.call(1.8808158)
  end
  def on_mercury
    @calculate_years.call(0.2408467)
  end 
  def on_venus
    @calculate_years.call(0.61519726)
  end
  def on_jupiter
    @calculate_years.call(11.862615)
  end 
  def on_saturn
    @calculate_years.call(29.447498)
  end 
  def on_uranus
    @calculate_years.call(84.016846)
  end 
  def on_neptune
    @calculate_years.call(164.79132)
  end 
end

