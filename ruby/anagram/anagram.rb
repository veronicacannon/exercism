# return anagrams in array of words
class Anagram
  def initialize(word)
    @original_word = word
    @word = word.downcase.chars.sort
  end

  def match(candidates)
    candidates.select do |candidate|
      candidate.downcase.chars.sort == @word && candidate.casecmp(@original_word) != 0
    end
  end
end