require 'pry'

class Luhn
  def self.valid?(credit_card_number)
    return false if credit_card_number.length < 2
    
    just_numbers = credit_card_number.tr(" ", '')
    numbers = just_numbers.reverse.split("")
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

    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end
