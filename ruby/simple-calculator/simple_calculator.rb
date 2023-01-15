class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    unless first_operand.class == Integer && second_operand.class == Integer
      raise ArgumentError.new("Invalid argument")
    end

    unless ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation
    end

    if operation == "/" and second_operand == 0
      return "Division by zero is not allowed."
    end

    result = first_operand.send(operation, second_operand)
    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
