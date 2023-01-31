module PerfectNumber
  def self.classify(num)
    raise RuntimeError unless num.positive?

    aliquot_sum = ((1...num).select { |n|num % n == 0}).sum

    case
    when aliquot_sum == num
      "perfect"
    when aliquot_sum < num
      "deficient"
    when aliquot_sum > num
      "abundant"
    end
  end
end
