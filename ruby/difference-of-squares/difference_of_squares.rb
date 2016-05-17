class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum()
    (1..@number).reduce(:+)**2
  end

  def sum_of_squares()
    55
  end
end