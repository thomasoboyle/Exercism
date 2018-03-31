class Say

  NUMBERS_UP_TO_ONE_HUNDRED = {
    100 => "hundred",
    90  => "ninety",
    80  => "eigthy",
    70  => "seventy",
    60  => "sixty",
    50  => "fifty",
    40  => "fourty",
    30  => "thirty",
    20  => "twenty"
  }

  NUMBERS_UP_TO_TWENTY = {
    20  => "twenty",
    19  => "nineteen",
    18  => "eigthteen",
    17  => "seventeen",
    16  => "sixteen",
    15  => "fifteen",
    14  => "fourteen",
    13  => "thirteen",
    12  => "twelve",
    11  => "eleven",
    10  => "ten",
    9   => "nine",
    8   => "eight",
    7   => "seven",
    6   => "six",
    5   => "five",
    4   => "four",
    3   => "three",
    2   => "two",
    1   => "one",
    0   => "zero",
  } 
  require 'pry'
  def initialize(question)
    @question = question
  end

  def in_english
    if @question <= 20
      NUMBERS_UP_TO_TWENTY[@question]
    elsif @question < 100
      numbers_less_then_100
    elsif @question < 1000
      hunders_column = @question / 100
      if @question % 100 != 0
        remainder = @question % 100
        # get recursive with remainder
      else
        NUMBERS_UP_TO_TWENTY[hunders_column] + " " + NUMBERS_UP_TO_ONE_HUNDRED[100]
      end
    end
  end
  
  private

  def numbers_less_then_100
    if digit_in_ones_column
      NUMBERS_UP_TO_ONE_HUNDRED[tens_column] + "-" + NUMBERS_UP_TO_TWENTY[ones_column]
    else
      NUMBERS_UP_TO_ONE_HUNDRED[@question]
    end
  end

  def digit_in_ones_column 
    @question / 10 !=0
  end

  def ones_column
    ones_column = @question / 10
  end

  def tens_column
    tens_column = @question - ones_column
  end
end
