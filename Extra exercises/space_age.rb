class SpaceAge
  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    (@seconds / 31557600.00).round(2)
  end

  def on_mercury
    convert_earth_years(0.2408467)
  end

  def on_venus
    convert_earth_years(0.61519726)
  end

  def on_mars
    convert_earth_years(1.8808158)
  end

  def on_jupiter
    convert_earth_years(11.862615)
  end

  def on_saturn
    convert_earth_years(29.447498)
  end

  def on_uranus
    convert_earth_years(84.016846)
  end

  def on_neptune
    convert_earth_years(164.79132)
  end

  private

  def convert_earth_years(time)
    (on_earth / time).round(2)
  end
end
