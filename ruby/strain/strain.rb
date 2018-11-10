module Strain
  def keep
    each_with_object(self.class.new) do |element, elements_to_keep|
      elements_to_keep << element if yield(element)
    end
  end

  def discard
    keep { |element| !yield(element) }
  end
end

class Array
  include Strain
end
