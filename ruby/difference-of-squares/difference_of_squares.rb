class Squares
  VERSION = 2
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sum()
    (0..number).reduce(:+)**2
  end

  def sum_of_squares()
    sum = (0..number).to_a.reduce(0) {|acc, elm| 
      acc += elm ** 2
    }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end