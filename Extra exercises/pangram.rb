class Pangram
  ALPHABET = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
              'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

  def self.pangram?(sentence)
    sentence.downcase.gsub(/[^a-z]/i, '').chars.uniq.sort == ALPHABET
  end
end
