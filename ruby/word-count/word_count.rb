# Count of each word in phrase
class Phrase
  WORD_REGEX = %r{\b[\w']+\b}
  def initialize(phrase)
    @words = phrase.downcase.scan(WORD_REGEX)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) do |word, count|
      count[word] += 1
    end
  end
end
