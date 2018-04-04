class Say

  require 'pry'

  NUMBERS_UP_TO_ONE_MILLION = {
    1000000 => "one million",
    100000  => "hundred thousand",
    10000   => "ten thousand",
    1000    => "one thousand"
  }

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

  def initialize(question)
    @question = question
  end

  def in_english
    if @question <= 20
      NUMBERS_UP_TO_TWENTY[@question]
    elsif @question < 100
      numbers_less_then_100
    elsif @question < 1000
      hundreds_column = @question / 100
      if @question % 100 != 0
        breakdown_100s(@question)
      else
        NUMBERS_UP_TO_TWENTY[hundreds_column] + " " + NUMBERS_UP_TO_ONE_HUNDRED[100]
      end
    else
      if @question % 1000 == 0
        NUMBERS_UP_TO_ONE_MILLION[@question]
      else
        remainder = @question % 1000
        breakdown_100s(remainder)
      end
    end
  end
  
  private

  def breakdown_100s(num = @question)
    hundreds_column = @question / 100
    remainder = @question % 100
    tens_place = if remainder % 10 == 0
                   remainder / 10
                 else
                   (remainder / 10) * 10
                 end
    ones_place = remainder - tens_place
    binding.pry
    NUMBERS_UP_TO_TWENTY[hundreds_column] + " hundred " + NUMBERS_UP_TO_ONE_HUNDRED[tens_place] + "-" + NUMBERS_UP_TO_TWENTY[ones_place]
  end

  def numbers_less_then_100(number = @question)
    if digit_in_ones_column(number)
      NUMBERS_UP_TO_ONE_HUNDRED[tens_column(number)] + "-" + NUMBERS_UP_TO_TWENTY[ones_column(number)]
    else
      NUMBERS_UP_TO_ONE_HUNDRED[@question]
    end
  end

  def digit_in_ones_column(number = @question) 
    number / 10 !=0
  end

  def ones_column(number = @question)
    ones_column = number / 10
  end

  def tens_column(number = @question)
    if number > 99
      number = number / 100
    end
    tens_column = number - ones_column
  end
end
