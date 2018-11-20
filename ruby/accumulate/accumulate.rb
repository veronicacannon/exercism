module Accumulate
  def accumulate
    return to_enum(__method__) { size } unless block_given?
    each_with_object([]) do |element, new_collection| 
      new_collection << yield(element)
    end
  end
end

Array.include Accumulate