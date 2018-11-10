class Bob
  def self.hey(remark)
    @remark = remark.strip
    return "Calm down, I know what I'm doing!" if a_question? && yelled?
    return 'Sure.' if a_question?
    return 'Fine. Be that way!' if addresses_only?
    return 'Whoa, chill out!' if yelled?
    return 'Whatever.' # anything else
  end

  def self.a_question?
    @remark.end_with?('?')
  end

  def self.yelled?
    @remark.upcase == @remark && @remark =~ /[A-Z]/
  end

  def self.addresses_only?
    @remark.strip.empty?
  end
end
