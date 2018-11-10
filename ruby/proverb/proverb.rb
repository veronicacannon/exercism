# For want of a ...
module Proverb
  def self.new(*nouns, qualifier: nil)
    rhyme = ''
    nouns.each_cons(2) do |want, loss|
      rhyme = rhyme +  "For want of a #{want} the #{loss} was lost."
      rhyme = rhyme + "\n"
    end
    rhyme = rhyme + "And all for the want of a #{nouns[0]}."
    return rhyme
  end
end
