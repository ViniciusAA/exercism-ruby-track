class Triangle
  def initialize(sides)
    @sides = sides
    @only_uniq_sides = sides.uniq.length
  end

  def equilateral?
    triangle? && @only_uniq_sides == 1
  end

  def isosceles?
    triangle? && @only_uniq_sides <=2
  end

  def scalene?
    triangle? && @only_uniq_sides == 3
  end

  private

  def triangle?
    return false if @sides.include?(0)

    @sides.each do |side|
      return false if @sides.sum - side < side
    end
    true
  end
end
