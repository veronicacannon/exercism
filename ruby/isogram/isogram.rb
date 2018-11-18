class Isogram
    def self.isogram?(phrase)
        letters = phrase.downcase.scan(/[a-z]/)
        letters.uniq.length == letters.length
    end
end