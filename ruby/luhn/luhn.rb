class Luhn

  def self.valid?(card_number)
    numbers = card_number.gsub(/\D/, '').reverse

    sum, i = 0, 0

    numbers.each_char do |number|
      num = number.to_i

      # double odd numbers
      num *= 2 if num.odd?

      # add remainder
      num = 1 + (num - 10) if num >= 10

      sum += num
      i += i
    end

    return if sum.zero?
    (sum % 10).zero?
  end
end
