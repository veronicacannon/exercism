# Match brackets in a string
class Brackets
  BRACKETS = {
    '{' => '}',
    '(' => ')',
    '[' => ']'
  }
  def self.paired?(string)
    stack = []
    string.each_char do |char|
      if BRACKETS.key?(char)
        stack.push(char)
      elsif BRACKETS.value?(char)
        return false unless BRACKETS[stack.pop] == char
      end
    end
    stack.empty?
  end
end

# Problem version
module BookKeeping
  VERSION = 4
end
