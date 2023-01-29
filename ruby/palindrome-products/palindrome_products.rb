class Palindromes
    attr_reader :palindromes
    Palindrome = Struct.new(:factors, :value)

    def initialize(max_factor: nil, min_factor: 1)
        @max_factor = max_factor
        @min_factor = min_factor
        @palindromes = Hash.new { |h, k| h[k] = [] }
    end

    def generate
        factors = [*@min_factor..@max_factor].repeated_combination(2)
        factors.each do |factor|
            if is_palindrome?(factor)
                @palindromes[factor.inject(&:*)] << factor
            end
        end
        @palindromes
    end

    def is_palindrome?(factor)
        product = factor.inject(&:*).to_s
        product == product.reverse
    end

    def largest
        Palindrome.new(@palindromes[@palindromes.keys.max], @palindromes.keys.max)
    end

    def smallest
        Palindrome.new(@palindromes[@palindromes.keys.min], @palindromes.keys.min)
    end
end
