class PhoneNumber
  def self.clean(number)
    number.gsub!(/[^0-9]/, '')
    return nil if number.length < 10 || number.length > 11
    (number[0] != "1" ? (return nil) : number[0] = "") if number.length == 11
    (number[0].match?(/0|1/) || number[3].match?(/0|1/)) ? (return nil) : number
  end
end
