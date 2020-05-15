class Series
  def initialize(string)
    @string = string.chars
  end

  def slices(digits)
    raise ArgumentError if @string.length < digits
    @string.each_cons(digits).map{ |group| group.join }
  end
end
