# return anagram from array of words
class Anagram
  def initialize(word)
    @original_word = word
    @match_word = word.downcase.chars.sort.join('')
  end

  def match(candidates)
    candidates.select do |candidate|
      candidate.downcase.chars.sort.join('') == @match_word &&
        candidate.casecmp(@original_word) != 0
    end
  end
end
