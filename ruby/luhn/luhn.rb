class Luhn
  def self.valid?(credit_card_number)
    just_numbers = credit_card_number.tr(" ", '')
    numbers = just_numbers.reverse.split("")

    return false if invalid_length?(numbers)
    return false if invalid_chars?(just_numbers)

    sum = 0
    numbers.each_with_index do |number, idx|
      number = number.to_i

      if idx.even?
        sum += number
      elsif (number * 2) > 9
        sum += ( number * 2 - 9)
      else
        sum += number * 2
      end
      sum
    end

    divisible_by_ten?(sum)
  end

  private

  def self.invalid_length?(numbers)
    numbers.length < 2
  end

  def self.invalid_chars?(just_numbers)
    just_numbers.gsub(/[^\d]/, '').length < just_numbers.length
  end

  def self.divisible_by_ten?(sum)
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end
