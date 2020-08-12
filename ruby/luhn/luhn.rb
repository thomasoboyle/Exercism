require 'pry'

class Luhn
  def self.valid?(credit_card_number)
    return false if credit_card_number.length < 2
    
    numbers = credit_card_number.reverse.split("")

    sum = 0

    numbers.each_with_index do |number, idx|
      number = number.to_i

      if idx.even?
        sum += number
      elsif (number * 2) > 10 
        sum += ( number * 2 - 9)
      else
        sum += number * 2
      end
    end
    sum % 10
  end
end
