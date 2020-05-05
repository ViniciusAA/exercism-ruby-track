class Acronym
  SELECT_FIRST_LETTERS = /\b[a-zA-Z]/
  def self.abbreviate(phrase)
    phrase.scan(SELECT_FIRST_LETTERS).join.upcase
  end
end
