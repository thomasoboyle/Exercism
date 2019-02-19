require 'pry'

class Robot
  attr_accessor :name

  def initialize
    @name = Robot.gen_name
  end

  @used_names = []

  def self.gen_name
    new_name = gen_rand_letters + gen_rand_nums
    if @used_names.include?(new_name)
      new_name = gen_rand_letters + gen_rand_nums
    end
    @used_names << new_name
    new_name
  end

  def self.gen_rand_letters
    ALPHABET[rand(1..26)] + ALPHABET[rand(1..26)]
  end

  def self.gen_rand_nums
    rand(100..999).to_s
  end

  def self.forget; end

  def reset
    initialize
  end

  ALPHABET = {
    1 => 'A',
    2 => 'B',
    3 => 'C',
    4 => 'D',
    5 => 'E',
    6 => 'F',
    7 => 'G',
    8 => 'H',
    9 => 'I',
    10 => 'J',
    11 => 'K',
    12 => 'L',
    13 => 'M',
    14 => 'N',
    15 => 'O',
    16 => 'P',
    17 => 'Q',
    18 => 'R',
    19 => 'S',
    20 => 'T',
    21 => 'U',
    22 => 'V',
    23 => 'W',
    24 => 'X',
    25 => 'Y',
    26 => 'Z',
  }
end
