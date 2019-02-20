require 'pry'

class Integer

  def to_roman
    ROMAN[self]
  end

  ROMAN = {
    1000 => 'M',
    500  => 'D',
    100 => 'C',
    50 => 'L',
    10 => 'X',
    9 => 'XI',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

end
