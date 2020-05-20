class ArmstrongNumbers
  def self.include?(number)
    number.digits.sum{ |digit| digit**number.digits.count } == number
  end
end
