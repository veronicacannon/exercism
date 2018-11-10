# Clean Up Phone Numbers
module PhoneNumber
  VALID_PHONE_NUMBER = /^([2-9]\d\d){2}\d{4}$/

  # Use North American Numbering Plan (NANP) to Validate
  def self.clean(number)
    numbers = number.gsub(/\D/, '').sub(/^1/, '')
    numbers[VALID_PHONE_NUMBER]
  end
end
