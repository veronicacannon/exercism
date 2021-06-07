# get sum of multiples to limit
class SumOfMultiples
  def initialize(*args)
    @array = *args
  end

  def to(limit)
    @array.map do |multiple|
      [*1..limit - 1].select do |i|
        (i % multiple).zero?
      end
    end.flatten.uniq.sum
  end
end
