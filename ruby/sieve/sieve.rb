require 'pry'
class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    return [] if @limit == 1
    return [2] if @limit == 2

    primes = {}

    (2..@limit).each do |n|
      if primes[n].nil?
        primes[n] = true
        multiple = 2
        while n*multiple <= @limit
          primes[n*multiple] = false
          multiple += 1
        end
      end
    end

    primes.select { |k, v| v }.keys
  end
end
