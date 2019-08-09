require 'pry'

class Luhn

  def self.valid?(card_number)
    numbers = card_number.gsub(/\D/, '').reverse

    sum, index = 0, 0

    numbers.each_char do |number|
      num = number.to_i

      # double odd numbers
      num *= 2 if index.odd?

      # subtract 9 if sum is double digit
      num = num - 9 if num >= 10
      sum += num

      index += index
    end

    return if sum.zero?
    (sum % 10).zero?
  end
end
