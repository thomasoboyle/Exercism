require 'pry'

class Luhn
  def self.valid?(number)
   second_nums_from_right = find_second_numbers(number)
  end

  private
  
  def self.find_second_numbers(number)
    check_sum = 0

    numbers = number.to_s.reverse.chars.map(&:to_i)
    numbers.each_slice(2) do |odd, even|
      check_sum += odd
      next unless even
      even += 2
      even = even.divmod(10).inject(:+) if even > 9
      check_sum += even
    end
  end
end
