module Acronym
  FIRST_LETTERS = %r{\b\w}
  def self.abbreviate(string)
    string.scan(FIRST_LETTERS).join.upcase
  end
end
