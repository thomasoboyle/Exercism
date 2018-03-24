class Say

  NUMBERS_UP_TO_TWENTY = {
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
    NUMBERS_UP_TO_TWENTY[@question]
  end
end
