class Bob
  def self.hey(remark)
    remark = Remark.new(remark)
    return "Calm down, I know what I'm doing!" if remark.a_question? && remark.yelled?
    return 'Sure.' if remark.a_question?
    return 'Fine. Be that way!' if remark.addresses_only?
    return 'Whoa, chill out!' if remark.yelled?
    return 'Whatever.' # anything else
  end
end

class Remark
  attr_reader :remark
  
  def initialize(remark)
    @remark = remark.strip
  end
  
  def a_question?
    remark.end_with?('?')
  end

  def yelled?
    remark.upcase == remark && remark =~ /[A-Z]/
  end

  def addresses_only?
    remark.strip.empty?
  end
end

