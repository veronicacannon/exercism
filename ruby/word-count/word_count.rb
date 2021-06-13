# Count of each word in phrase
class Phrase
  WORD_REGEX = %r{\b[\w']+\b}
  def initialize(phrase)
    @words = phrase.downcase.scan(WORD_REGEX)
  end

  def word_count
    @words.tally
  end
end
