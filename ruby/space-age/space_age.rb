class SpaceAge
  def initialize(seconds)
    @seconds = seconds
    @f = lambda { |orbital_years| (@seconds / (31557600 * orbital_years).to_f).round(2) }
  end
  def on_earth
    @f.call(1)
  end
  def on_mars
    @f.call(1.8808158)
  end
  def on_mercury
    @f.call(0.2408467)
  end 
  def on_venus
    @f.call(0.61519726)
  end
  def on_jupiter
    @f.call(11.862615)
  end 
  def on_saturn
    @f.call(29.447498)
  end 
  def on_uranus
    @f.call(84.016846)
  end 
  def on_neptune
    @f.call(164.79132)
  end 
end

