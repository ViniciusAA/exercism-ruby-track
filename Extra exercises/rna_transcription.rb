class Complement
  SEQUENCE = { "G" => "C", "C" => "G", "T" => "A", "A" => "U" }
  private_constant :SEQUENCE
  def self.of_dna(dna)
    dna = dna.split("").map { |nucleotide| SEQUENCE[nucleotide] }.join
  end
end
