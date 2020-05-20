class Grains
  def self.square(chess_square)
    raise ArgumentError if chess_square <= 0 || chess_square > 64

    2**(chess_square-1)
  end

  def self.total
    (1..64).to_a.sum { |chess_square| square(chess_square) }
  end
end
