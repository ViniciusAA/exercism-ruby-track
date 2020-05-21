class SumOfMultiples
  def initialize(*digits)
    @digits = digits.to_a
  end

  def to(range)
    (1...range).sum{ |number|
      @digits.any?{|digit| number % digit == 0}? number : number = 0
    }
  end
end
