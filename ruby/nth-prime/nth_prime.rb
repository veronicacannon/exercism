module Prime
  def self.nth(n)
    raise ArgumentError unless n > 0
    prime_stack = []
    candidate = 2
    while prime_stack.length < n
      prime_stack.push(candidate) if is_prime?(candidate)
      candidate += 1
    end
    prime_stack.pop
  end
  
  def self.is_prime?(candidate)
    (2..Math.sqrt(candidate)).none? { |i| (candidate % i).zero? }
  end
end

