class Gigasecond
  GIGASECOND = 10**9
  private_constant :GIGASECOND

  def self.from(date)
    date + (GIGASECOND)
  end
end
