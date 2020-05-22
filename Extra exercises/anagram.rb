class Anagram
  def initialize(word)
    @word = word
  end

  def match(list)
    matching = Array.new
    list.map { |applicant|
      matching << applicant if
      organize(@word) == organize(applicant) unless
      @word.downcase == applicant.downcase
    }
    matching
  end

  private

  def organize(word)
    word.downcase.chars.sort
  end
end
