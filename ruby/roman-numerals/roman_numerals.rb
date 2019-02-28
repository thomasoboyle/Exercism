require 'pry'

class Integer

  def to_roman
    num = self
    symbol = ""
    ROMAN[self]
    ROMAN.each do |int, letter|
      while num >= int
        num -= int
        symbol += letter
      end
    end
    symbol
  end

  ROMAN = {
    1000 => 'M',
    900 => 'CM',
    500  => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

end
